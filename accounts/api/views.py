import random
from datetime import datetime
from django.http import Http404
from django.conf import settings
from django.core.mail import send_mail
from django.shortcuts import get_object_or_404
# from django.contrib.sessions.models import Session
from rest_framework.authtoken.models import Token
from rest_framework import generics,  status
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.permissions import AllowAny, IsAuthenticated
from django.contrib.auth import authenticate, get_user_model, login, logout
from social_django.utils import load_strategy, load_backend
from social_core.backends.oauth import BaseOAuth2
from social_core.exceptions import (MissingBackend, AuthTokenError, AuthForbidden)
from requests.exceptions import HTTPError
from fcm_django.models import FCMDevice
from rest_framework.generics import (CreateAPIView, ListAPIView,
                                     ListCreateAPIView,
                                     RetrieveUpdateDestroyAPIView,
                                     UpdateAPIView)
from accounts.models import (Blocked, Comment, Favourite, Friend, Image,
                             ImageLike, Message, Permission, Profile,
                             UserFlirt, UserLike, UserViewed)

from services.models import Notification
from .serializers import (UserSignUpSerializer, UserLoginSerializer, UserOtpSerializer,
                          SocialLoginSerializer, UserSerializer, ChangePasswordSerializer,
                          CommentSerializer, FavouriteSerializer, FlirtSerializer,
                          FriendSerializer, ImageLikeSerializer, ImageSerializer,
                          MessageSerializer, PermissionSerializer, ProfileSerializer,
                          ProfileUpdateSerializer, UserBlockedSerializer,
                          UserLikeSerializer, UserValidateSerializer, UserViewedSerializer)

User = get_user_model()


def generate_code():
    from_range = 000000
    to_range = 999999
    return random.randint(from_range, to_range)


def send_code(user):
    user.code = generate_code()
    user.save()
    subject = "The Single App Team"
    message = "The Single App, \n OTP %s" % user.code
    from_email = settings.EMAIL_HOST_USER
    to_email = [user.email]
    send_mail(subject, message, from_email, to_email, fail_silently=False)


def send_notification(user, other, msg):
    u = User.objects.get(id=user)
    o = User.objects.get(id=other)
    if "messaged you" not in msg:
        Notification.objects.create(user=u, other=o, msg=msg)
        if o.profile.online:
            devices = FCMDevice.objects.filter(user=other)
            devices.send_message(title="The Single App", body=msg)


def parse_error(errors):
    err = ""
    for key in errors:
        for e in errors.get(key):
            err = err + " " + key + "-" + e
    return err


def get_key(obj):
    return obj.id


def data_slice(record, count):
    num = 25
    if count is not None:
        count = int(count)
        if count == 0:
            return record[:num]
        else:
            return record[count * num:(count + 1) * num]
    return record


class UserSignUpApiView(CreateAPIView):
    queryset = User.objects.all()
    serializer_class = UserSignUpSerializer
    permission_classes = [AllowAny]

    def post(self, request, *args, **kwargs):
        # user passing parameters using headers
        domain = request.data.get('domain', None)
        serializer = UserSignUpSerializer(data=request.data)
        if serializer.is_valid():
            user = serializer.save()
            if user:
                if domain != 'M':
                    send_code(user)  # Generate & sending validation code to user email
                token, created = Token.objects.get_or_create(user=user)
                data = {
                    'id': user.id,
                    'gender': user.profile.gender,
                    'Profile_id': user.profile.id,
                    'is_premium': user.profile.is_premium,
                    'img': None,
                    'token': token.key
                }
                return Response({"status": data})
            return Response({"status": "User Does Not Exist"})
        errors = []
        for error, values in serializer.errors.items():
            errors.append(values[0])

        # Deleted by concept need to be added in login and signup
        phone = request.data.get('phone', None)
        queryset = User.objects.all()
        u = queryset.filter(phone=phone).first()
        if u is not None:
            if u.deleted_by == 'A' and not u.is_active:
                return Response({"status": "User is blocked by admin"})
            if u.deleted_by == 'U' and not u.is_active:
                return Response({"status": "User is Deleted"})

        if errors[0] == "Email already exist" or errors[0] == "Phone No already exist":
            email = request.data.get('email', None)
            queryset = User.objects.all()
            user = queryset.filter(email=email).first()
            if user is not None and user.login_by == 'E':
                token, created = Token.objects.get_or_create(user=user)
                img = str(
                    user.profile.profile_img.img) if user.profile.profile_img else None
                data = {'id': user.id,
                        'user': user.phone,
                        'gender': user.profile.gender,
                        'is_premium': user.profile.is_premium,
                        'Profile_id': user.profile.id,
                        'img': img,
                        'token': token.key
                        }
                return Response({"status": data})
            return Response({"status": errors[0]})
        return Response({"status": "Something went wrong"})
        ########################### END ######################################

        # return Response({"status": serializer.errors}) # exact errors by default
        # return Response({"status": "Something went wrong"})


class LoginApiView(APIView): #db record creation avoiding using api view
    queryset = User.objects.all()
    serializer_class = UserLoginSerializer
    permission_classes = [AllowAny]

    def post(self, request, *args, **kwargs):
        serializer = UserLoginSerializer(data=request.data)
        if serializer.is_valid():
            username = request.data.get('username', None)
            password = request.data.get('password', None)
            queryset = User.objects.all()
            u = queryset.filter(email=username).union(queryset.filter(phone=username)).first()
            try:
                if u.deleted_by == 'A' and not u.is_active:
                    return Response({"status": "User is blocked by admin"})
                if u.deleted_by == 'U' and not u.is_active:
                    return Response({"status": "User is Deleted"})
                if not u.is_active:
                    return Response({"status": "User is not active"})
            except:
                return Response({"status": "User does not exist"})
            user = authenticate(username=username, password=password)
            if user is not None:
                if user.is_active:
                    login(request, user)
                    token, created = Token.objects.get_or_create(user=user)
                    img, name = None, None
                    if user.profile.profile_img is not None:
                        img = str(user.profile.profile_img.img)
                    if user.profile.first_name is not None:
                        name = user.profile.first_name
                    data = {
                        'id': user.id,
                        'user': name,
                        'image': img,
                        'is_active': user.is_active,
                        'is_staff': user.is_staff,
                        'is_admin': user.is_admin,
                        'is_premium': user.profile.is_premium,
                        'profile': user.profile.id,
                        'token': token.key
                    }
                    return Response({"status": data})
                return Response({"status": "User is not active"})
            return Response({"status": "User authendication failed"})
        return Response({"status": "validation error"})


class SocialLoginView(generics.GenericAPIView):
    """Log in using facebook"""
    serializer_class = SocialLoginSerializer
    permission_classes = [AllowAny]

    def post(self, request):
        """Authenticate user through the provider and access_token"""
        serializer = self.serializer_class(data=request.data)
        serializer.is_valid(raise_exception=True)
        provider = serializer.data.get('provider', None)
        domain = serializer.data.get('domain', None)
        strategy = load_strategy(request)

        try:
            backend = load_backend(strategy=strategy, name=provider,
                                   redirect_uri=None)

        except MissingBackend:
            return Response({'error': 'Please provide a valid provider'},
                            status=status.HTTP_400_BAD_REQUEST)
        try:
            if isinstance(backend, BaseOAuth2):
                access_token = serializer.data.get('access_token')
            user = backend.do_auth(access_token)
        except HTTPError as error:
            return Response({
                "error": {
                    "access_token": "Invalid token",
                    "details": str(error)
                }
            }, status=status.HTTP_400_BAD_REQUEST)
        except AuthTokenError as error:
            return Response({
                "error": "Invalid credentials",
                "details": str(error)
            }, status=status.HTTP_400_BAD_REQUEST)

        try:
            authenticated_user = backend.do_auth(access_token, user=user)
            authenticated_user.phone = authenticated_user.email
            authenticated_user.save()
            try:
                if authenticated_user.profile:
                    print("..")
            except:
                Profile.objects.create(user=authenticated_user, first_name="first_name",
                                       last_name="last_name", domain=domain)
                Permission.objects.create(user=authenticated_user)
        except HTTPError as error:
            return Response({
                "error": "invalid token",
                "details": str(error)
            }, status=status.HTTP_400_BAD_REQUEST)

        except AuthForbidden as error:
            return Response({
                "error": "invalid token",
                "details": str(error)
            }, status=status.HTTP_400_BAD_REQUEST)

        if authenticated_user and authenticated_user.is_active:
            login(request, authenticated_user)
            token, created = Token.objects.get_or_create(user=user)
            response = {
                "id": authenticated_user.id,
                "profile": authenticated_user.profile.id,
                "gender": authenticated_user.profile.gender,
                "email": authenticated_user.email,
                "token": token.key
            }
            return Response(status=status.HTTP_200_OK, data=response)

#mobile application vlidation
class UserValidateApiView(CreateAPIView):
    queryset = User.objects.all()
    serializer_class = UserValidateSerializer
    permission_classes = [AllowAny]

    def post(self, request, *args, **kwargs):
        domain = request.data.get('domain', None)
        code = request.data.get('code', None)
        api_token = request.data.get('token', None)
        serializer = UserValidateSerializer(data=request.data)
        if serializer.is_valid():
            if api_token is not None:
                try:
                    user = Token.objects.get(key=api_token).user
                except Token.DoesNotExist:
                    raise Response({"status": "Matching token does not exist."})
                #mobile front end validation
                if domain == 'mobile':
                    user.is_active = True
                    user.save()
                    return Response({"status": "Updated successfully"})
                else:
                    if user.code == code:
                        user.is_active = True
                        user.save()
                        return Response({"status": "Updated successfully"})
                    return Response({"status": "Otp is wrong"})
            return Response({"status": "Updated failed"})
        return Response({"status": "Validation Error"})

#otp resending for email user
class ResendOtpApiView(CreateAPIView):
    # queryset = User.objects.all()
    serializer_class = UserOtpSerializer
    permission_classes = [AllowAny]

    def post(self, request, *args, **kwargs):
        serializer = UserOtpSerializer(data=request.data)
        if serializer.is_valid():
            email = request.data.get('username', None)
            print(email)
            user = User.objects.filter(email=email).first()
            print(user)
            if user is not None:
                if not user.is_active:
                    # Generate & sending validation code to user email
                    send_code(user)
                    token, created = Token.objects.get_or_create(user=user)
                    return Response({"status": "success", "token": token.key, "id": user.id})
                return Response({"status": "User is already in active status"})
            return Response({"status": "User is not avaiable with given creditentials"})
        return Response({"status": "Validation Error"})


class ChangePasswordApiView(UpdateAPIView):
    queryset = User.objects.all()
    serializer_class = ChangePasswordSerializer
    permission_classes = [IsAuthenticated]

    def get_object(self, queryset=None):
        obj = self.request.user
        return obj

    def update(self, request, *args, **kwargs):
        self.object = self.get_object()
        serializer = self.get_serializer(data=request.data)
        if serializer.is_valid():
            #get and set password default django user model
            if not self.object.check_password(serializer.data.get('old_password')):
                return Response({"status": "old password does not match"})
            self.object.set_password(serializer.data.get('new_password'))
            self.object.save()
            return Response({"status": "success"}, status=status.HTTP_200_OK)
        return Response({"status": "failed"})


class LogoutApiView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request, *args, **kwargs):
        # offline need to be hit in profile model
        user = self.request.user
        p = user.profile
        p.online = False
        p.save()
        logout(request)
        return Response(status=status.HTTP_204_NO_CONTENT)


class UserListApiView(ListAPIView):
    # sessions = Session.objects.all()
    # print(sessions)
    queryset = User.objects.all()
    serializer_class = UserSerializer
    permission_classes = [IsAuthenticated, ]

# retrieve update delete default 
class UserUpdateApiView(RetrieveUpdateDestroyAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    permission_classes = [IsAuthenticated, ]

#list and create with few additional details
class ProfileListApiView(ListCreateAPIView):
    queryset = Profile.objects.all()
    serializer_class = ProfileSerializer
    permission_classes = [IsAuthenticated, ]

    def list(self, request, pk=None):
        # getting user parameter
        online = request.query_params.get('online', None)
        latitude = request.query_params.get('latitude', None)
        longitude = request.query_params.get('longitude', None)
        city = request.query_params.get('city', None)

        # Filter user based on user preference
        seeking_for = request.query_params.get('seeking_for', None)
        otheronline = request.query_params.get('otheronline', None)
        fromage = request.query_params.get('fromage', None)
        toage = request.query_params.get('toage', None)
        premium = request.query_params.get('premium', None)
        screen = request.query_params.get('screen', None)
        count = request.query_params.get('count', None)

        permission = Permission.objects.filter(user=request.user).first()

        # Fetch the user profile
        if request.user.id is not None:
            profile = Profile.objects.get(id=request.user.profile.id)

        # Update user profile based on info provided by user
        if profile is not None:
            if latitude is not None and len(latitude.strip()) != 0:
                profile.latitude = float(latitude)
            if longitude is not None and len(longitude.strip()) != 0:
                profile.longitude = float(longitude)
            if online is not None and permission.hide_online_status is False:
                profile.online = bool(online)
            if city is not None:
                profile.city = city
            # if city is not None or online is not None or longitude is not None:
            profile.save()
        # Exclude own profile
        queryset = self.get_queryset().exclude(id=request.user.profile.id)
        # Exclude staff user
        queryset = queryset.exclude(user__is_staff=True)
        # if Seeking for is B , it will take default
        if seeking_for is not None and seeking_for != 'B':
            queryset = queryset.filter(gender=seeking_for)
        else:
            queryset = queryset.filter(gender=request.user.profile.seeking_for)

        default = queryset
        if screen == 'M':  # Check Whether the screen is Match or Map Screen ie  "M is Match Screen"
            if latitude is not None and latitude != '':
                queryset = queryset.filter(latitude__gte=float(
                    latitude) - 1, latitude__lte=float(latitude) + 2.0)
            if longitude is not None and longitude != '':
                queryset = queryset.filter(longitude__gte=float(
                    longitude) - 1, longitude__lte=float(longitude) + 2.0)
            # if city is not None:
            #     queryset = queryset.filter(city=city)
        else:
            # Check Whether the screen is Match or Map Screen ie  "M is Match Screen" for some distance (25 km)
            if latitude is not None and len(latitude.strip()) != 0:
                queryset = queryset.filter(latitude__gte=float(
                    latitude) - 1, latitude__lte=float(latitude) + 0.5)
            if longitude is not None and len(longitude.strip()) != 0:
                queryset = queryset.filter(longitude__gte=float(
                    longitude) - 1, longitude__lte=float(longitude) + 0.5)
        #online user visibility
        if otheronline is not None and len(otheronline.strip()) != 0:
            online = True if otheronline == 'T' else False
            queryset = queryset.filter(online=online)
        # chacking user is premium or not
        if premium is not None and len(premium.strip()) != 0:
            premium = True if premium == 'T' else False
            queryset = queryset.filter(is_premium=premium)
        # age basis filterations
        if fromage is not None and fromage != '0':
            try:
                from_year = datetime.today().year - int(fromage)
                queryset = queryset.filter(dob__year__lte=from_year)
            except ValueError:
                raise ValueError("Pass integer value")
        if toage is not None and toage != '0':
            to_year = datetime.today().year - int(toage)
            queryset = queryset.filter(dob__year__gte=to_year)
        #if minimum 2 profile count checking else default (full profile) screen
        resultset = queryset if queryset.count() >= 2 else default.union(queryset)
        serializer = ProfileSerializer(data_slice(resultset, count), many=True)
        return Response({'data': serializer.data})


class ProfileUpdateApiView(RetrieveUpdateDestroyAPIView):
    queryset = Profile.objects.all()
    serializer_class = ProfileSerializer
    permission_classes = [IsAuthenticated, ]


class ProfileUpdateView(APIView):
    queryset = Profile.objects.all()
    serializer_class = ProfileUpdateSerializer
    permission_classes = [IsAuthenticated, ]

    def get_object(self, pk):
        try:
            obj = Profile.objects.get(pk=pk)
             #checking user eligible or not for profile updation based on his permissions
            self.check_object_permissions(self.request, obj)
            return obj
        except Profile.DoesNotExist:
            raise Http404

    def put(self, request, pk, format=None):
        profile = self.get_object(pk)
        img = request.query_params.get('img', None)
        if img is not None and img == 'no':
            data = request.data
            data['image'] = ""
            serializer = ProfileUpdateSerializer(profile, data=data)
        else:
            #default image
            serializer = ProfileUpdateSerializer(profile, data=request.data)
        if serializer.is_valid():
            serializer.save()
            img = str(
                profile.profile_img.img) if profile.profile_img else None
            return Response({'status': 'update successfully',
                             'pro_img': img,
                             'first_name': str(profile.first_name),
                             })
        return Response({'status': serializer.errors})

#searching list based on params passing.
class SearchListApiView(ListCreateAPIView):
    queryset = Profile.objects.all()
    serializer_class = ProfileSerializer
    permission_classes = [IsAuthenticated, ]

    def get(self, request, *args, **kwargs):
        seeking_for = request.query_params.get('seeking_for', None)
        online = request.query_params.get('otheronline', None)
        fromage = request.query_params.get('fromage', None)
        toage = request.query_params.get('toage', None)
        premium = request.query_params.get('premium', None)
        count = request.query_params.get('count', None)
        #exculde own user profile
        queryset = self.get_queryset().exclude(id=request.user.profile.id)
        # Exclude staff user
        queryset = queryset.exclude(user__is_staff=True)
        # if Seeking for is B , it will take default
        if seeking_for is not None and seeking_for != 'B':
            queryset = queryset.filter(gender=seeking_for)
        else:
            queryset = queryset.filter(gender=request.user.profile.seeking_for)

        if online is not None and len(online.strip()) != 0:
            online = True if online == 'T' else False
            queryset = queryset.filter(online=online)
        if premium is not None and len(premium.strip()) != 0:
            premium = True if premium == 'T' else False
            queryset = queryset.filter(is_premium=premium)
        if fromage is not None and fromage != '0':
            try:
                from_year = datetime.today().year - int(fromage)
                queryset = queryset.filter(dob__year__lte=from_year)
            except ValueError:
                raise ValueError("Pass integer value")
        if toage is not None and toage != '0':
            try:
                to_year = datetime.today().year - int(toage)
                queryset = queryset.filter(dob__year__gte=to_year)
            except ValueError:
                raise ValueError("Pass integer value")
        serializer = ProfileSerializer(data_slice(queryset, count), many=True)
        return Response(serializer.data)


class ImageListCreateApiView(ListCreateAPIView):
    queryset = Image.objects.all()
    serializer_class = ImageSerializer
    permission_classes = [IsAuthenticated]

    def get(self, request, *args, **kwargs):
        queryset = self.get_queryset()
        #user passing parameters in headers
        count = request.query_params.get('count', None)
        other = request.query_params.get('other', None)
        if other is not None and len(other.strip()) != 0:
            try:
                user = User.objects.get(id=other)
            except User.DoesNotExist:
                return Response([])
            #decending order
            queryset = queryset.filter(user=user).order_by('-id')
        else:
            queryset = queryset.filter(user=self.request.user).order_by('-id')
        serializer = ImageSerializer(data_slice(queryset, count), many=True)
        return Response(serializer.data)


class ImageUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = Image.objects.all()
    serializer_class = ImageSerializer
    permission_classes = [IsAuthenticated]

#completed till 20/1/2023
#user pass i favourite(user), you favourite (users friends)
class FavouriteListCreateApiView(ListCreateAPIView):
    queryset = Favourite.objects.all()
    serializer_class = FavouriteSerializer
    permission_classes = [IsAuthenticated]

    def get(self, request, *args, **kwargs):
        # complete db in mentioned model
        queryset = self.get_queryset()
        fav = request.query_params.get('q', None)
        count = request.query_params.get('count', None)
       # user favourite list 
        if fav is not None and fav == 'ifav':
            #ifav filtering in queryset based on requested user and other user
            queryset_i_fav = queryset.filter(
                user=self.request.user).order_by('-id')
            #queryset_i_fav count is 25 example 100/4 - we are sending 4 times  queryset_i_fav count (25)
            serializer = FavouriteSerializer(
                data_slice(queryset_i_fav, count), many=True)
            return Response(serializer.data)
        #other users favopurite list
        if fav is not None and fav == 'theyfav':
            queryset_they_fav = queryset.filter(
                other=self.request.user).order_by('-id')
            serializer = FavouriteSerializer(
                data_slice(queryset_they_fav, count), many=True)
            return Response(serializer.data)
        #default case if it is exception to i fav and you fav
        serializer = FavouriteSerializer(queryset, many=True)
        return Response(serializer.data)

    def post(self, request, *args, **kwargs):
        # data -  getting data from user
        user = request.data.get('user', None)
        other = request.data.get('other', None)
        # header passing msg value
        msg = self.request.query_params.get('msg')
        u = User.objects.get(id=user)
        o = User.objects.get(id=other)

        if self.request.user == o:
            return Response({"status": "own profile"})
        if msg is None:
            msg = " %s  Favoured your Profile" % (u.profile.first_name)
        serializer = FavouriteSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            send_notification(user, other, msg)
            data = {"status": "success", 'id': serializer.data['id']}
            return Response(data, status=status.HTTP_201_CREATED)
        return Response({"status": "Something went wrong"})


class FavouriteUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = Favourite.objects.all()
    serializer_class = FavouriteSerializer
    permission_classes = [IsAuthenticated]


class UserLikeListCreateApiView(ListCreateAPIView):
    queryset = UserLike.objects.all()
    serializer_class = UserLikeSerializer
    permission_classes = [IsAuthenticated]

    def get(self, request, *args, **kwargs):
        queryset = self.get_queryset()
        like = request.query_params.get('q', None)
        count = request.query_params.get('count', None)

        if like is not None and like == 'ilike':
            queryset_i_like = queryset.filter(
                user=self.request.user).order_by('-id')
            serializer = UserLikeSerializer(
                data_slice(queryset_i_like, count), many=True)
            return Response(serializer.data)

        if like is not None and like == 'theylike':
            queryset_they_like = queryset.filter(
                other=self.request.user).order_by('-id')
            serializer = UserLikeSerializer(
                data_slice(queryset_they_like, count), many=True)
            return Response(serializer.data)

        serializer = UserLikeSerializer(queryset, many=True)
        return Response(serializer.data)

    def post(self, request, *args, **kwargs):
        user = request.data.get('user', None)
        other = request.data.get('other', None)
        msg = self.request.query_params.get('msg')
        u = User.objects.get(id=user)
        o = User.objects.get(id=other)
       #user  cant like his own profile
        if self.request.user == o:
            return Response({"status": "own profile"})
        # other user  likes  one user profile,  this api will send notifications message 
        # (example - instagram like notifications)
        if msg is None:
            msg = " %s  Liked your Profile" % (u.profile.first_name)
        serializer = UserLikeSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            if self.request.user.id != other:
                send_notification(user, other, msg)
            data = {"status": "success", 'id': serializer.data['id']}
            return Response(data, status=status.HTTP_201_CREATED)
        return Response({"status": "Something went wrong"})


class UserLikeUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = UserLike.objects.all()
    serializer_class = UserLikeSerializer
    permission_classes = [IsAuthenticated]

# one user views other user profile data
class UserViewedListCreateApiView(ListCreateAPIView):
    queryset = UserViewed.objects.all()
    serializer_class = UserViewedSerializer
    permission_classes = [IsAuthenticated]

    def get(self, request, *args, **kwargs):
        queryset = self.get_queryset()
        view = request.query_params.get('q', None)
        count = request.query_params.get('count', None)

        if view is not None and view == 'iview':
            queryset_i_view = queryset.filter(
                user=self.request.user).order_by('-id')
            serializer = UserViewedSerializer(
                data_slice(queryset_i_view, count), many=True)
            return Response(serializer.data)

        if view is not None and view == 'theyview':
            queryset_they_view = queryset.filter(
                other=self.request.user).order_by('-id')
            serializer = UserViewedSerializer(
                data_slice(queryset_they_view, count), many=True)
            return Response(serializer.data)

        serializer = UserViewedSerializer(queryset, many=True)
        return Response(serializer.data)

    def post(self, request, *args, **kwargs):
        user = request.data.get('user', None)
        other = request.data.get('other', None)
        msg = self.request.query_params.get('msg')
        u = User.objects.get(id=user)
        o = User.objects.get(id=other)

        if self.request.user == o:
            return Response({"status": "Your own profile"})
        if msg is None:
            msg = " %s  Viewed your Profile" % (u.profile.first_name)
        serializer = UserViewedSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            send_notification(user, other, msg)
            data = {"status": "success", 'id': serializer.data['id']}
            return Response(data, status=status.HTTP_201_CREATED)
        return Response({"status": "Something went wrong"})


class UserViewedUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = UserViewed.objects.all()
    serializer_class = UserViewedSerializer
    permission_classes = [IsAuthenticated]


class ImageLikeListCreateApiView(ListCreateAPIView):
    queryset = ImageLike.objects.all()
    serializer_class = ImageLikeSerializer
    permission_classes = [IsAuthenticated]

    def get(self, request, *args, **kwargs):
        queryset = self.get_queryset()
        like = request.query_params.get('q', None)
        count = request.query_params.get('count', None)

        if like is not None and like == 'ilike':
            queryset_i_like = queryset.filter(
                user=self.request.user).order_by('-id')
            serializer = ImageLikeSerializer(
                data_slice(queryset_i_like, count), many=True)
            return Response(serializer.data)

        if like is not None and like == 'theylike':
            queryset_they_like = queryset.filter(
                other=self.request.user).order_by('-id')
            serializer = ImageLikeSerializer(
                data_slice(queryset_they_like, count), many=True)
            return Response(serializer.data)

        serializer = ImageLikeSerializer(queryset, many=True)
        return Response(serializer.data)

    def post(self, request, *args, **kwargs):
        user = request.data.get('user', None)
        other = request.data.get('other', None)
        msg = self.request.query_params.get('msg')

        serializer = ImageLikeSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            u = User.objects.get(id=user)
            o = User.objects.get(id=other)

            if self.request.user == o:
                return Response({"status": " own profile"})
            if msg is None:
                msg = " %s  Liked your Profile Image" % (u.profile.first_name)
            send_notification(user, other, msg)
            data = {"status": "success", 'id': serializer.data['id']}
            return Response(data, status=status.HTTP_201_CREATED)
        # return Response({"status": serializer.errors})
        return Response({"status": "Something went wrong"})


class ImageLikeUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = ImageLike.objects.all()
    serializer_class = ImageLikeSerializer
    permission_classes = [IsAuthenticated]


class CommentListCreateApiView(ListCreateAPIView):
    queryset = Comment.objects.all()
    serializer_class = CommentSerializer
    permission_classes = [IsAuthenticated]
    #decending order comments list
    def get_queryset(self):
        queryset = Comment.objects.all().order_by('-id')
        return queryset

    def post(self, request, *args, **kwargs):
        # user requested data
        user = request.data.get('user', None)
        other = request.data.get('other', None)
        msg = self.request.query_params.get('msg')

        serializer = CommentSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            u = User.objects.get(id=user)
            o = User.objects.get(id=other)

            if self.request.user == o:
                return Response({"status": "own profile"})
            if msg is None:
                msg = " %s  Commented your Profile Image" % (u.profile.first_name)
            send_notification(user, other, msg)
            data = {"status": "success", 'id': serializer.data['id']}
            return Response(data, status=status.HTTP_201_CREATED)
        # return Response({"status": serializer.errors})
        return Response({"status": "Something went wrong"})


class CommentUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = Comment.objects.all()
    serializer_class = CommentSerializer
    permission_classes = [IsAuthenticated]


class FlirtListCreateApiView(ListCreateAPIView):
    queryset = UserFlirt.objects.all()
    serializer_class = FlirtSerializer
    permission_classes = [IsAuthenticated]

    def get(self, request, *args, **kwargs):
        queryset = self.get_queryset()
        flirt = request.query_params.get('q', None)
        count = request.query_params.get('count', None)

        if flirt is not None and flirt == 'iflirt':
            queryset_i_flirt = queryset.filter(
                user=self.request.user).order_by('-id')
            serializer = FlirtSerializer(data_slice(
                queryset_i_flirt, count), many=True)
            return Response(serializer.data)

        if flirt is not None and flirt == 'theyflirt':
            queryset_they_flirt = queryset.filter(
                other=self.request.user).order_by('-id')
            serializer = FlirtSerializer(data_slice(
                queryset_they_flirt, count), many=True)
            return Response(serializer.data)

        serializer = FlirtSerializer(queryset, many=True)
        return Response(serializer.data)

    def post(self, request, *args, **kwargs):
        user = request.data.get('user', None)
        other = request.data.get('other', None)
        msg = self.request.query_params.get('msg')
        u = User.objects.get(id=user)
        o = User.objects.get(id=other)

        if self.request.user == o:
            return Response({"status": "own profile"})
        if msg is None:
            msg = " %s  Flirted your Profile" % (u.profile.first_name)
        serializer = FlirtSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            send_notification(user, other, msg)
            data = {"status": "success", 'id': serializer.data['id']}
            return Response(data, status=status.HTTP_201_CREATED)
        return Response({"status": "Something went wrong"})


class FlirtUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = UserFlirt.objects.all()
    serializer_class = FlirtSerializer
    permission_classes = [IsAuthenticated]

#completed 20/1/23
class MessageListCreateApiView(ListCreateAPIView):
    queryset = Message.objects.all()
    serializer_class = MessageSerializer
    permission_classes = [IsAuthenticated]

    def get_msg_between_user_and_other(self, queryset, user, other):
        user_qs = queryset.filter(user=user, other=other)
        other_qs = queryset.filter(user=other, other=user)
        # union used for merging two records
        data = user_qs.union(other_qs).order_by('-id')
        return data
    # collecting two user friend request and checking first record in ascending order, 
    # that particular request will be accepted by user else false
    # first record will convert list(array) to invidual data set
    def check_is_friend_or_not(self, queryset, user, other):
        user_qs = queryset.filter(user=user, other=other)
        other_qs = queryset.filter(user=other, other=user)
        friend = user_qs.union(other_qs).first()
        if friend is not None and friend.accepted is True:
            return True
        return False

    def check_is_blocked_or_not(self, queryset, user, other):
        user_qs = queryset.filter(user=user, other=other)
        other_qs = queryset.filter(user=other, other=user)
        blocked_user = user_qs.union(other_qs).first()
        if blocked_user is not None:
            return True
        return False

    def check_is_premium_can_msg(self, queryset, user):
        user = queryset.filter(user=user).first()
        if user is not None:
            return user.premium_members_only_msg
        return False

    def check_is_friend_can_msg(self, queryset, user):
        user = queryset.filter(user=user).first()
        if user is not None:
            return user.friendly_only_can_msg
        return False

    def get(self, request):
        unique, queryset_list = [], []
        msg_count = {}
        is_friend = {}
        is_friend_only_can = {}
        is_blocked = {}
        # is_premium_only_can = {}
        list = self.request.query_params.get('q')
        user = self.request.query_params.get('user')
        other = self.request.query_params.get('other')
        count = request.query_params.get('count', None)

        queryset = Message.objects.all()
        friend_qs = Friend.objects.all()
        blocked_qs = Blocked.objects.all()
        permession_qs = Permission.objects.all()

        # List the message as list based on user
        if list == "list" and queryset is not None:
            # To whome i had sent a message
            userlist = queryset.filter(user=self.request.user).order_by('-id')

            # Who are they sent message to me
            queryset_user = queryset.filter(
                other=self.request.user).order_by('-id')
            # own profile record will be removed (exclude)
            queryset_o = queryset_user.exclude(
                user=self.request.user).order_by('-id')
            # unread message count
            for q in queryset_o:
                if q.user.id not in unique:
                    unique.append(q.user.id)
                    last_msg = self.get_msg_between_user_and_other(
                        queryset, q.user, q.other)

                    queryset_list.append(last_msg[0])
                    # Messaage Count based on user
                    # qs = last_msg.filter(user=q.user.id)  # .filter(is_read=False)
                    msg_count[q.user.id] = queryset_o.filter(
                        user=q.user.id).filter(is_read=False).count()
                    # is_friend[q.user.id] = self.check_is_friend_or_not(friend_qs, q.user, q.other)

            for q in userlist:
                if q.other.id not in unique:
                    unique.append(q.other.id)
                    last_msg = self.get_msg_between_user_and_other(
                        queryset, q.user, q.other)
                    queryset_list.append(last_msg[0])
                    # Messaage Count based on user
                    # last_msg.filter(other=q.other.id).count()
                    msg_count[q.other.id] = 0
                    # is_friend[q.other.id] = self.check_is_friend_or_not(friend_qs, q.user, q.other)

            for key in msg_count:
                is_friend[key] = self.check_is_friend_or_not(friend_qs, self.request.user, key)
                is_blocked[key] = self.check_is_blocked_or_not(blocked_qs, self.request.user, key)
                is_friend_only_can[key] = self.check_is_friend_can_msg(permession_qs, key)
                # is_premium_only_can[key] = self.check_is_premium_can_msg(permession_qs, key)

            data = sorted(queryset_list, key=get_key)
            serializer = MessageSerializer(data_slice(data, count), many=True)
            return Response({
                "data": serializer.data,
                "count": msg_count,
                "friend": is_friend,
                "blocked": is_blocked,
                "friend_only": is_friend_only_can,
                # "premium_only": is_premium_only_can,
            })

        # Chat between two users
        if user is not None and other is not None:
            # char perpose changed to user to other and other to user
            # user_qs = queryset.filter(user=user, other=other)
            other_qs = queryset.filter(user=other, other=user)
            data = self.get_msg_between_user_and_other(queryset, user, other)
            user_blocked = self.check_is_blocked_or_not(blocked_qs, user, other)
            print(user_blocked)
            # Mark unreaded message into readed
            for d in other_qs:
                if d.is_read is False:
                    d.is_read = True
                    d.save()
            # Serialize the queryset and send the response
            serializer = MessageSerializer(data_slice(data, count), many=True)
            return Response({"data": serializer.data, "blocked": user_blocked})

        serializer = MessageSerializer(queryset, many=True)
        return Response({"data": serializer.data})

    def post(self, request, *args, **kwargs):
        user = request.data.get('user', None)
        other = request.data.get('other', None)
        msg = self.request.query_params.get('msg')
        u = User.objects.get(id=user)
        if msg is None:
            msg = " %s  messaged you" % (u.profile.first_name)
        serializer = MessageSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            if self.request.user != other:
                send_notification(user, other, msg)
            return Response({"status": "success"})
        return Response({"status": "Something went wrong"})


class MessageUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = Message.objects.all()
    serializer_class = MessageSerializer
    permission_classes = [IsAuthenticated]


class FriendListCreateApiView(ListCreateAPIView):
    queryset = Friend.objects.all()
    serializer_class = FriendSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        temp = []
        user = self.request.query_params.get('q')
        accepted = self.request.query_params.get('accepted')
        count = self.request.query_params.get('count', None)
        queryset = Friend.objects.all()
        # other user requested friend list 
        if user=='theyreq':
            queryset = queryset.filter(other=self.request.user)
            # queryset=queryset.filter(accepted=False)
            for q in queryset:
                    if q.accepted is False:
                        temp.append(q)
            return data_slice(temp, count)
        # user accepted friend list 
        if user is not None:
            queryset = queryset.filter(user=user).union(
                queryset.filter(other=user))
            if accepted is not None and accepted == 'true':
                # Boolean not working in filter, so i have chenage in to for loop
                # queryset = queryset.filter(accepted is True)                
                for q in queryset:
                    if q.accepted is True:
                        temp.append(q)
                return data_slice(temp, count)
            return data_slice(queryset, count)
        return queryset

    def get(self, request, *args, **kwargs):
        queryset=self.get_queryset()
        serializer=FriendSerializer(queryset, many=True)
        return Response(serializer.data)

    def post(self, request, *args, **kwargs):
        user = request.data.get('user', None)
        other = request.data.get('other', None)
        msg = self.request.query_params.get('msg')
        u = User.objects.get(id=user)
        if msg is None:
            msg = " %s  send a Friend Request" % (u.profile.first_name)
        serializer = FriendSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            if self.request.user != other:
                send_notification(user, other, msg)
            data = {"status": "success", 'id': serializer.data['id']}
            return Response(data, status=status.HTTP_201_CREATED)
        return Response({"status": "Something went wrong"})


class FriendUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = Friend.objects.all()
    serializer_class = FriendSerializer
    permission_classes = [IsAuthenticated]

    def put(self, request, *args, **kwargs):
        user = request.data.get('user')
        other = request.data.get('other')
        u = User.objects.get(id=user)
        friend = self.get_object()
        serializer = FriendSerializer(friend, data=request.data)
        if serializer.is_valid():
            msg = "%s accepted your friend request" % u.profile.first_name
            serializer.save()
            send_notification(user, other, msg)
            return Response({"status": "success", 'id': serializer.data['id']})
        return Response({"status": "Something went wrong"})

    def get_object(self):
        obj = get_object_or_404(self.get_queryset(), pk=self.kwargs["pk"])
        self.check_object_permissions(self.request, obj)
        return obj
#completed 21/1/23

class UserBlockedListCreateApiView(ListCreateAPIView):
    queryset = Blocked.objects.all()
    serializer_class = UserBlockedSerializer
    permission_classes = [IsAuthenticated]

    def post(self, request, *args, **kwargs):
        user = request.data.get('user')
        other = request.data.get('other')
        friend = Friend.objects.filter(user=user, other=other).union(
            Friend.objects.filter(user=other, other=user)).first()
        serializer = UserBlockedSerializer(data=request.data)
        if serializer.is_valid():
            if friend is not None and friend.accepted is True:
                friend.delete()
            serializer.save()
            data = {"status": "success", 'id': serializer.data['id']}
            return Response(data, status=status.HTTP_201_CREATED)
        return Response({"status": "Something went wrong"})

    def get_queryset(self):
        queryset = Blocked.objects.all()
        user = self.request.query_params.get('q', None)
        count = self.request.query_params.get('count', None)
        if user is not None:
            queryset = queryset.filter(user=user)
        return data_slice(queryset, count)


class UserBlockedUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = Blocked.objects.all()
    serializer_class = UserBlockedSerializer
    permission_classes = [IsAuthenticated]


class PermissionListCreateApiView(ListAPIView):
    queryset = Permission.objects.all()
    serializer_class = PermissionSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        queryset = Permission.objects.all()
        user = self.request.query_params.get('q', None)
        if user is not None:
            queryset = queryset.filter(user=user)
        return queryset


class PermissionUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = Permission.objects.all()
    serializer_class = PermissionSerializer
    permission_classes = [IsAuthenticated, ]
