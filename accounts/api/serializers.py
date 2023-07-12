from django.contrib.auth import get_user_model
from rest_framework import serializers
from rest_framework.serializers import ModelSerializer
from rest_framework.validators import UniqueTogetherValidator
from accounts.models import (Blocked, Comment, Favourite, Friend, Image,
                             ImageLike, Message, Permission, Profile,
                             UserFlirt, UserLike, UserViewed)

User = get_user_model()


def date_time_format(date):
    if date is not None:
        # return date.strftime("%d %b %Y T %I:%M %P")
        return date.strftime("%m/%d/%Y T %H:%M:%S")
    else:
        return " "


class UserSignUpSerializer(ModelSerializer):
    email = serializers.EmailField(label="email")
    phone = serializers.CharField(label="Phone")
    password = serializers.CharField(label="Password", write_only=True, style={
                                     'input_type': 'password'})
    first_name = serializers.CharField(allow_blank=True)
    last_name = serializers.CharField(allow_blank=True)
    gender = serializers.CharField(allow_blank=True)
    seeking_for = serializers.CharField(allow_blank=True)
    dob = serializers.DateField(required=False)
    is_active = serializers.BooleanField(required=True)
    is_staff = serializers.BooleanField(required=True)
    # is_admin = serializers.BooleanField(required=True)
    login_by = serializers.CharField(allow_blank=True)
    domain = serializers.CharField(allow_blank=True)

    class Meta:
        model = User
        fields = ('id', 'phone', 'password', 'email', 'is_active', 'is_staff',
                  'login_by',  'first_name', 'last_name', 'gender', 'seeking_for', 'dob', 'domain')  # 'is_admin',
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        dob = None
        first_name = validated_data.pop('first_name')
        last_name = validated_data.pop('last_name')
        seeking_for = validated_data.pop('seeking_for')
        gender = validated_data.pop('gender')
        domain = validated_data.pop('domain')
        password = validated_data.pop('password')
        if 'dob' in validated_data:
            dob = validated_data.pop('dob')
        # User creation and save password
        user = User.objects.create(**validated_data)
        user.set_password(password)
        user.save()
        # Profile creation for appropriate users
        Profile.objects.create(user=user, first_name=first_name, last_name=last_name,
                               gender=gender, seeking_for=seeking_for, dob=dob, domain=domain)
        Permission.objects.create(user=user)
        return user

    def validate_phone(self, value):
        phone = User.objects.filter(phone=value)
        if phone:
            raise serializers.ValidationError("Phone No already exist")
        return value

    def validate_email(self, value):
        user = User.objects.filter(email=value)
        if user:
            raise serializers.ValidationError("Email already exist")
        return value


class UserLoginSerializer(ModelSerializer):
    username = serializers.CharField(label="Username")
    password = serializers.CharField(label="Password", write_only=True, style={
                                     'input_type': 'password'})

    class Meta:
        model = User
        fields = ('username', 'password')

    # def validate_phone(self, value):
    #     email = User.objects.filter(email=value)
    #     if not email:
    #         raise serializers.ValidationError("User doesn't exist")
    #     return value


class UserOtpSerializer(serializers.Serializer):
    username = serializers.CharField(label="Username")


class SocialLoginSerializer(serializers.Serializer):
    """
    Serializer which accepts an OAuth2 access token and provider.
    """
    provider = serializers.CharField(max_length=255, required=True)
    access_token = serializers.CharField(max_length=4096, required=True, trim_whitespace=True)
    domain = serializers.CharField(allow_blank=True)


class ChangePasswordSerializer(serializers.Serializer):
    old_password = serializers.CharField(required=True)
    new_password = serializers.CharField(required=True)
    repeat_password = serializers.CharField(required=True)

    def validate(self, data):
        if data['new_password'] != data['repeat_password']:
            raise serializers.ValidationError("password doesn't match")
        return data


class FavouriteSerializer(ModelSerializer):
    u_first_name = serializers.SerializerMethodField()
    u_last_name = serializers.SerializerMethodField()
    u_city = serializers.SerializerMethodField()
    u_image = serializers.SerializerMethodField()
    o_first_name = serializers.SerializerMethodField()
    o_last_name = serializers.SerializerMethodField()
    o_city = serializers.SerializerMethodField()
    o_image = serializers.SerializerMethodField()
    u_is_premium = serializers.SerializerMethodField()
    u_online = serializers.SerializerMethodField()
    o_is_premium = serializers.SerializerMethodField()
    o_online = serializers.SerializerMethodField()
    str_date = serializers.SerializerMethodField()

    class Meta:
        model = Favourite
        fields = ('id', 'user', 'other', 'str_date', 'u_first_name', 'u_last_name', 'u_city',
                  'u_is_premium', 'u_online', 'o_is_premium', 'o_online', 'u_image',
                  'o_first_name',  'o_last_name',  'o_city', 'o_image')

        validators = [
            UniqueTogetherValidator(
                queryset=Favourite.objects.all(),
                fields=['user', 'other']
            )
        ]

    def get_u_first_name(self, obj):
        return obj.user.profile.first_name

    def get_u_last_name(self, obj):
        return obj.user.profile.last_name

    def get_u_city(self, obj):
        return obj.user.profile.city

    def get_u_is_premium(self, obj):
        return obj.user.profile.is_premium

    def get_u_online(self, obj):
        return obj.user.profile.online

    def get_o_first_name(self, obj):
        return obj.other.profile.first_name

    def get_o_last_name(self, obj):
        return obj.other.profile.last_name

    def get_o_city(self, obj):
        return obj.other.profile.city

    def get_o_is_premium(self, obj):
        return obj.other.profile.is_premium

    def get_o_online(self, obj):
        return obj.other.profile.online

    def get_str_date(self, obj):
        if obj.date is not None:
            return date_time_format(date=obj.date)

    def get_u_image(self, obj):
        image = Image.objects.filter(user=obj.user.id).filter(is_profile=True).last()
        if image is not None:
            return "%s" % (str(image.img))
        return None

    def get_o_image(self, obj):
        image = Image.objects.filter(user=obj.other.id).filter(is_profile=True).last()
        if image is not None:
            return "%s" % (str(image.img))
        return None


class UserLikeSerializer(ModelSerializer):
    u_first_name = serializers.SerializerMethodField()
    u_last_name = serializers.SerializerMethodField()
    u_city = serializers.SerializerMethodField()
    u_image = serializers.SerializerMethodField()
    o_first_name = serializers.SerializerMethodField()
    o_last_name = serializers.SerializerMethodField()
    o_city = serializers.SerializerMethodField()
    o_image = serializers.SerializerMethodField()
    u_is_premium = serializers.SerializerMethodField()
    u_online = serializers.SerializerMethodField()
    o_is_premium = serializers.SerializerMethodField()
    o_online = serializers.SerializerMethodField()
    str_date = serializers.SerializerMethodField()

    class Meta:
        model = UserLike
        fields = ('id', 'user', 'other', 'str_date', 'u_first_name', 'u_last_name', 'u_city',
                  'u_image', 'u_is_premium', 'u_online', 'o_is_premium', 'o_online',
                  'o_first_name', 'o_last_name',  'o_city', 'o_image')
        validators = [
            UniqueTogetherValidator(
                queryset=UserLike.objects.all(),
                fields=['user', 'other']
            )
        ]
        # tempdata = []
        # userlikedata = UserLike.objects.all()
        # for obj in userlikedata:
        #     userdata = obj.user
        #     otherdata = obj.other
        #     #print(userdata, otherdata)
        #     e = userdata+','+otherdata
        #     tempdata.append(userdata+','+otherdata)
        # print(tempdata)

    def get_u_first_name(self, obj):
        return obj.user.profile.first_name

    def get_u_last_name(self, obj):
        return obj.user.profile.last_name

    def get_u_city(self, obj):
        return obj.user.profile.city

    def get_u_is_premium(self, obj):
        return obj.user.profile.is_premium

    def get_u_online(self, obj):
        return obj.user.profile.online

    def get_o_first_name(self, obj):
        return obj.other.profile.first_name

    def get_o_last_name(self, obj):
        return obj.other.profile.last_name

    def get_o_city(self, obj):
        return obj.other.profile.city

    def get_o_is_premium(self, obj):
        return obj.other.profile.is_premium

    def get_o_online(self, obj):
        return obj.other.profile.online

    def get_str_date(self, obj):
        if obj.date is not None:
            return date_time_format(date=obj.date)

    def get_u_image(self, obj):
        image = Image.objects.filter(user=obj.user.id).filter(is_profile=True).last()
        if image is not None:
            return "%s" % (str(image.img))
        return None

    def get_o_image(self, obj):
        image = Image.objects.filter(user=obj.other.id).filter(is_profile=True).last()
        if image is not None:
            return "%s" % (str(image.img))
        return None


class UserViewedSerializer(ModelSerializer):
    u_first_name = serializers.SerializerMethodField()
    u_last_name = serializers.SerializerMethodField()
    u_city = serializers.SerializerMethodField()
    u_image = serializers.SerializerMethodField()
    o_first_name = serializers.SerializerMethodField()
    o_last_name = serializers.SerializerMethodField()
    o_city = serializers.SerializerMethodField()
    o_image = serializers.SerializerMethodField()
    u_is_premium = serializers.SerializerMethodField()
    u_online = serializers.SerializerMethodField()
    o_is_premium = serializers.SerializerMethodField()
    o_online = serializers.SerializerMethodField()
    str_date = serializers.SerializerMethodField()

    class Meta:
        model = UserViewed
        fields = ('id', 'user', 'other', 'str_date', 'u_first_name', 'u_last_name', 'u_city',
                  'u_image', 'u_is_premium', 'u_online', 'o_is_premium', 'o_online',
                  'o_first_name', 'o_last_name',  'o_city', 'o_image')

    def get_u_first_name(self, obj):
        return obj.user.profile.first_name

    def get_u_last_name(self, obj):
        return obj.user.profile.last_name

    def get_u_city(self, obj):
        return obj.user.profile.city

    def get_u_is_premium(self, obj):
        return obj.user.profile.is_premium

    def get_u_online(self, obj):
        return obj.user.profile.online

    def get_o_first_name(self, obj):
        return obj.other.profile.first_name

    def get_o_last_name(self, obj):
        return obj.other.profile.last_name

    def get_o_city(self, obj):
        return obj.other.profile.city

    def get_o_is_premium(self, obj):
        return obj.other.profile.is_premium

    def get_o_online(self, obj):
        return obj.other.profile.online

    def get_str_date(self, obj):
        if obj.date is not None:
            return date_time_format(date=obj.date)

    def get_u_image(self, obj):
        image = Image.objects.filter(user=obj.user.id).filter(is_profile=True).last()
        if image is not None:
            return "%s" % (str(image.img))
        return None

    def get_o_image(self, obj):
        image = Image.objects.filter(user=obj.other.id).filter(is_profile=True).last()
        if image is not None:
            return "%s" % (str(image.img))
        return None


class ImageLikeSerializer(ModelSerializer):
    image_user_id = serializers.SerializerMethodField()
    u_first_name = serializers.SerializerMethodField()
    u_last_name = serializers.SerializerMethodField()
    u_city = serializers.SerializerMethodField()
    u_image = serializers.SerializerMethodField()
    o_first_name = serializers.SerializerMethodField()
    o_last_name = serializers.SerializerMethodField()
    o_city = serializers.SerializerMethodField()
    o_image = serializers.SerializerMethodField()
    u_is_premium = serializers.SerializerMethodField()
    u_online = serializers.SerializerMethodField()
    o_is_premium = serializers.SerializerMethodField()
    o_online = serializers.SerializerMethodField()
    str_date = serializers.SerializerMethodField()

    class Meta:
        model = ImageLike
        fields = ('id', 'image_id',   'image_user_id',  'str_date', 'user', 'u_first_name',
                  'u_last_name', 'u_city', 'u_image', 'u_is_premium', 'u_online', 'o_is_premium',
                  'o_online', 'other', 'o_first_name', 'o_last_name',  'o_city', 'o_image')
        validators = [
            UniqueTogetherValidator(
                queryset=ImageLike.objects.all(),
                fields=['user', 'image_id']
            )
        ]

    def validate(self, data):
        if data['image_id'].user != data['other']:
            raise serializers.ValidationError("Select correct image owner - other")
        return data

    def get_image_user_id(self, obj):
        return obj.image_id.user.id

    def get_u_first_name(self, obj):
        return obj.user.profile.first_name

    def get_u_last_name(self, obj):
        return obj.user.profile.last_name

    def get_u_city(self, obj):
        return obj.user.profile.city

    def get_u_is_premium(self, obj):
        return obj.user.profile.is_premium

    def get_u_online(self, obj):
        return obj.user.profile.online

    def get_o_first_name(self, obj):
        return obj.other.profile.first_name

    def get_o_last_name(self, obj):
        return obj.other.profile.last_name

    def get_o_city(self, obj):
        return obj.other.profile.city

    def get_o_is_premium(self, obj):
        return obj.other.profile.is_premium

    def get_o_online(self, obj):
        return obj.other.profile.online

    def get_str_date(self, obj):
        if obj.date is not None:
            return date_time_format(date=obj.date)

    def get_u_image(self, obj):
        image = Image.objects.filter(user=obj.user.id).filter(is_profile=True).last()
        if image is not None:
            return "%s" % (str(image.img))
        return None

    def get_o_image(self, obj):
        image = Image.objects.filter(user=obj.other.id).filter(is_profile=True).last()
        if image is not None:
            return "%s" % (str(image.img))
        return None


class CommentSerializer(ModelSerializer):
    image_user_id = serializers.SerializerMethodField()
    u_first_name = serializers.SerializerMethodField()
    u_last_name = serializers.SerializerMethodField()
    u_city = serializers.SerializerMethodField()
    u_image = serializers.SerializerMethodField()
    o_first_name = serializers.SerializerMethodField()
    o_last_name = serializers.SerializerMethodField()
    o_city = serializers.SerializerMethodField()
    o_image = serializers.SerializerMethodField()
    u_is_premium = serializers.SerializerMethodField()
    u_online = serializers.SerializerMethodField()
    o_is_premium = serializers.SerializerMethodField()
    o_online = serializers.SerializerMethodField()
    str_date = serializers.SerializerMethodField()

    class Meta:
        model = Comment
        fields = ('id', 'msg', 'str_date', 'image', 'image_user_id', 'user', 'u_first_name',
                  'u_last_name', 'u_city', 'u_image', 'u_is_premium', 'u_online', 'o_is_premium',
                  'o_online',  'other', 'o_first_name', 'o_last_name',  'o_city', 'o_image')

    def validate(self, data):
        if data['image'].user != data['other']:
            raise serializers.ValidationError("Select correct image owner - other")
        return data

    def get_image_user_id(self, obj):
        return obj.image.user.id

    def get_image(self, obj):
        if obj.image is not None:
            return "%s" % (str(obj.image.img))
        return None

    def get_u_first_name(self, obj):
        return obj.user.profile.first_name

    def get_u_last_name(self, obj):
        return obj.user.profile.last_name

    def get_u_city(self, obj):
        return obj.user.profile.city

    def get_u_is_premium(self, obj):
        return obj.user.profile.is_premium

    def get_u_online(self, obj):
        return obj.user.profile.online

    def get_o_first_name(self, obj):
        return obj.other.profile.first_name

    def get_o_last_name(self, obj):
        return obj.other.profile.last_name

    def get_o_city(self, obj):
        return obj.other.profile.city

    def get_o_is_premium(self, obj):
        return obj.other.profile.is_premium

    def get_o_online(self, obj):
        return obj.other.profile.online

    def get_str_date(self, obj):
        if obj.date is not None:
            return date_time_format(date=obj.date)

    def get_u_image(self, obj):
        image = Image.objects.filter(user=obj.user.id).filter(is_profile=True).last()
        if image is not None:
            return "%s" % (str(image.img))
        return None

    def get_o_image(self, obj):
        image = Image.objects.filter(user=obj.other.id).filter(is_profile=True).last()
        if image is not None:
            return "%s" % (str(image.img))
        return None


class ImageSerializer(ModelSerializer):
    likeimage = ImageLikeSerializer(many=True, read_only=True)
    commentimage = CommentSerializer(many=True, read_only=True)
    user_imagelike = serializers.SerializerMethodField()
    imagelike_count = serializers.SerializerMethodField()

    class Meta:
        model = Image
        fields = ('id', 'img', 'created_date', 'user', 'is_profile', 'likeimage',
                  'commentimage', 'user_imagelike', 'imagelike_count')

    def get_imagelike_count(self, obj):
        return ImageLike.objects.filter(image_id=obj).count()

    def get_user_imagelike(self, obj):
        try:
            other = self.context['request'].query_params.get('other', None)
            try:
                other = User.objects.get(id=other)
            except:
                other = None
            user = self.context['request'].user
            queryset = ImageLike.objects.filter(image_id=obj)
            img_like = queryset.filter(user=user, other=other).first()
            if img_like:
                return 'yes-{}'.format(img_like.id)
            else:
                return 'no-0'
        except:
            return 'no-0'


class FlirtSerializer(ModelSerializer):
    u_first_name = serializers.SerializerMethodField()
    u_last_name = serializers.SerializerMethodField()
    u_city = serializers.SerializerMethodField()
    u_image = serializers.SerializerMethodField()
    o_first_name = serializers.SerializerMethodField()
    o_last_name = serializers.SerializerMethodField()
    o_city = serializers.SerializerMethodField()
    o_image = serializers.SerializerMethodField()
    u_is_premium = serializers.SerializerMethodField()
    u_online = serializers.SerializerMethodField()
    o_is_premium = serializers.SerializerMethodField()
    o_online = serializers.SerializerMethodField()
    str_date = serializers.SerializerMethodField()

    class Meta:
        model = UserFlirt
        fields = ('id', 'user', 'other', 'str_date', 'u_first_name', 'u_last_name', 'u_city',
                  'u_image', 'u_is_premium', 'u_online', 'o_is_premium', 'o_online', 'o_first_name',
                  'o_last_name',  'o_city', 'o_image')
        validators = [
            UniqueTogetherValidator(
                queryset=UserFlirt.objects.all(),
                fields=['user', 'other']
            )
        ]

    def get_u_first_name(self, obj):
        return obj.user.profile.first_name

    def get_u_last_name(self, obj):
        return obj.user.profile.last_name

    def get_u_city(self, obj):
        return obj.user.profile.city

    def get_u_is_premium(self, obj):
        return obj.user.profile.is_premium

    def get_u_online(self, obj):
        return obj.user.profile.online

    def get_o_first_name(self, obj):
        return obj.other.profile.first_name

    def get_o_last_name(self, obj):
        return obj.other.profile.last_name

    def get_o_city(self, obj):
        return obj.other.profile.city

    def get_o_is_premium(self, obj):
        return obj.other.profile.is_premium

    def get_o_online(self, obj):
        return obj.other.profile.online

    def get_str_date(self, obj):
        if obj.date is not None:
            return date_time_format(date=obj.date)

    def get_u_image(self, obj):
        image = Image.objects.filter(user=obj.user.id).filter(is_profile=True).last()
        if image is not None:
            return "%s" % (str(image.img))
        return None

    def get_o_image(self, obj):
        image = Image.objects.filter(user=obj.other.id).filter(is_profile=True).last()
        if image is not None:
            return "%s" % (str(image.img))
        return None


class MessageSerializer(ModelSerializer):
    u_first_name = serializers.SerializerMethodField()
    u_last_name = serializers.SerializerMethodField()
    u_city = serializers.SerializerMethodField()
    u_image = serializers.SerializerMethodField()
    u_online = serializers.SerializerMethodField()
    o_first_name = serializers.SerializerMethodField()
    o_last_name = serializers.SerializerMethodField()
    o_city = serializers.SerializerMethodField()
    o_online = serializers.SerializerMethodField()
    o_image = serializers.SerializerMethodField()
    u_is_premium = serializers.SerializerMethodField()
    u_online = serializers.SerializerMethodField()
    o_is_premium = serializers.SerializerMethodField()
    o_online = serializers.SerializerMethodField()
    str_date = serializers.SerializerMethodField()

    class Meta:
        model = Message
        fields = ('id', 'msg', 'str_date', 'user', 'is_read', 'other', 'u_first_name',
                  'u_last_name', 'u_city', 'u_image', 'u_online', 'u_is_premium', 'u_online',
                  'o_is_premium', 'o_online', 'o_first_name', 'o_last_name',  'o_city',
                  'o_online', 'o_image')

    def get_u_first_name(self, obj):
        return obj.user.profile.first_name

    def get_u_last_name(self, obj):
        return obj.user.profile.last_name

    def get_u_city(self, obj):
        return obj.user.profile.city

    def get_u_online(self, obj):
        return obj.user.profile.online

    def get_u_is_premium(self, obj):
        return obj.user.profile.is_premium

    def get_u_online(self, obj):
        return obj.user.profile.online

    def get_o_first_name(self, obj):
        return obj.other.profile.first_name

    def get_o_last_name(self, obj):
        return obj.other.profile.last_name

    def get_o_city(self, obj):
        return obj.other.profile.city

    def get_o_online(self, obj):
        return obj.other.profile.online

    def get_o_is_premium(self, obj):
        return obj.other.profile.is_premium

    def get_str_date(self, obj):
        if obj.date is not None:
            return date_time_format(date=obj.date)

    def get_u_image(self, obj):
        image = Image.objects.filter(user=obj.user.id).filter(is_profile=True).last()
        if image is not None:
            return "%s" % (str(image.img))
        return None

    def get_o_image(self, obj):
        image = Image.objects.filter(user=obj.other.id).filter(is_profile=True).last()
        if image is not None:
            return "%s" % (str(image.img))
        return None


class FriendSerializer(ModelSerializer):
    u_first_name = serializers.SerializerMethodField()
    u_last_name = serializers.SerializerMethodField()
    u_city = serializers.SerializerMethodField()
    u_image = serializers.SerializerMethodField()
    o_first_name = serializers.SerializerMethodField()
    o_last_name = serializers.SerializerMethodField()
    o_city = serializers.SerializerMethodField()
    o_online = serializers.SerializerMethodField()
    o_image = serializers.SerializerMethodField()
    u_is_premium = serializers.SerializerMethodField()
    u_online = serializers.SerializerMethodField()
    o_is_premium = serializers.SerializerMethodField()
    o_online = serializers.SerializerMethodField()
    str_date = serializers.SerializerMethodField()

    class Meta:
        model = Friend
        fields = ('id', 'user', 'other', 'accepted',  'str_date', 'u_first_name', 'u_last_name',
                  'u_city', 'u_image', 'u_is_premium', 'u_online', 'o_is_premium', 'o_online',
                  'o_first_name', 'o_last_name',  'o_city', 'o_online', 'o_image')
        validators = [
            UniqueTogetherValidator(
                queryset=Friend.objects.all(),
                fields=['user', 'other']
            )
        ]

    def get_u_first_name(self, obj):
        return obj.user.profile.first_name

    def get_u_last_name(self, obj):
        return obj.user.profile.last_name

    def get_u_city(self, obj):
        return obj.user.profile.city

    def get_u_is_premium(self, obj):
        return obj.user.profile.is_premium

    def get_u_online(self, obj):
        return obj.user.profile.online

    def get_o_first_name(self, obj):
        return obj.other.profile.first_name

    def get_o_last_name(self, obj):
        return obj.other.profile.last_name

    def get_o_city(self, obj):
        return obj.other.profile.city

    def get_o_online(self, obj):
        return obj.other.profile.online

    def get_o_is_premium(self, obj):
        return obj.other.profile.is_premium

    def get_str_date(self, obj):
        if obj.date is not None:
            return date_time_format(date=obj.date)

    def get_u_image(self, obj):
        image = Image.objects.filter(user=obj.user.id).filter(is_profile=True).last()
        if image is not None:
            return "%s" % (str(image.img))
        return None

    def get_o_image(self, obj):
        image = Image.objects.filter(user=obj.other.id).filter(is_profile=True).last()
        if image is not None:
            return "%s" % (str(image.img))
        return None


class UserBlockedSerializer(ModelSerializer):
    u_first_name = serializers.SerializerMethodField()
    u_last_name = serializers.SerializerMethodField()
    u_city = serializers.SerializerMethodField()
    u_image = serializers.SerializerMethodField()
    o_first_name = serializers.SerializerMethodField()
    o_last_name = serializers.SerializerMethodField()
    o_city = serializers.SerializerMethodField()
    o_image = serializers.SerializerMethodField()
    str_date = serializers.SerializerMethodField()
    o_is_premium = serializers.SerializerMethodField()

    class Meta:
        model = Blocked
        fields = ('id', 'user', 'other', 'str_date', 'u_first_name', 'u_last_name', 'u_city',
                  'u_image', 'o_first_name', 'o_last_name',  'o_city', 'o_is_premium', 'o_image')
        validators = [
            UniqueTogetherValidator(
                queryset=Blocked.objects.all(),
                fields=['user', 'other']
            )
        ]

    def get_u_first_name(self, obj):
        return obj.user.profile.first_name

    def get_u_last_name(self, obj):
        return obj.user.profile.last_name

    def get_u_city(self, obj):
        return obj.user.profile.city

    def get_o_first_name(self, obj):
        return obj.other.profile.first_name

    def get_o_last_name(self, obj):
        return obj.other.profile.last_name

    def get_o_city(self, obj):
        return obj.other.profile.city

    def get_o_is_premium(self, obj):
        return obj.other.profile.is_premium

    def get_str_date(self, obj):
        if obj.date is not None:
            return date_time_format(date=obj.date)

    def get_u_image(self, obj):
        image = Image.objects.filter(user=obj.user.id).filter(is_profile=True).last()
        if image is not None:
            return "%s" % (str(image.img))
        return None

    def get_o_image(self, obj):
        image = Image.objects.filter(user=obj.other.id).filter(is_profile=True).last()
        if image is not None:
            return "%s" % (str(image.img))
        return None


class PermissionSerializer(ModelSerializer):
    class Meta:
        model = Permission
        fields = ('id', 'user_tracking', 'friendly_only_can_view_profile', 'friendly_only_can_msg',
                  'only_friend_can_comment', 'hide_online_status', 'premium_members_only_msg',
                  'premium_members_only_view', 'user')
        read_only_fields = ('id', 'user')

    def update(self, instance, validated_data):
        user_status = validated_data.get('hide_online_status')
        instance.friendly_only_can_view_profile = validated_data.get(
            'friendly_only_can_view_profile', instance.friendly_only_can_view_profile)
        instance.friendly_only_can_msg = validated_data.get(
            'friendly_only_can_msg', instance.friendly_only_can_msg)
        instance.only_friend_can_comment = validated_data.get(
            'only_friend_can_comment', instance.only_friend_can_comment)
        instance.hide_online_status = validated_data.get(
            'hide_online_status', instance.hide_online_status)
        instance.premium_members_only_msg = validated_data.get(
            'premium_members_only_msg', instance.premium_members_only_msg)
        instance.premium_members_only_view = validated_data.get(
            'premium_members_only_view', instance.premium_members_only_view)
        instance.user_tracking = validated_data.get(
            'user_tracking', instance.user_tracking)
        instance.save()
        if user_status is True:
            profile = instance.user.profile
            profile.online = False
            profile.save()
        return instance


class ProfileImageSerializer(ModelSerializer):
    class Meta:
        model = Image
        fields = ('img',)


class ProfileSerializer(ModelSerializer):
    profile_img = ProfileImageSerializer()
    email = serializers.SerializerMethodField()
    phone_no = serializers.SerializerMethodField()
    user_tracking = serializers.SerializerMethodField()

    class Meta:
        model = Profile
        fields = ('id', 'first_name', 'last_name',  'city', 'is_premium', 'gender', 'dob', 'age',
                  'seeking_for',  'latitude', 'longitude', 'about', 'hobby', 'online', 'user_tracking',
                  'user', 'email', 'phone_no', 'looking_for', 'religion', 'occupation', 'retired',
                  'marital_status', 'number_of_children', 'living_at_home', 'last_msg_count',
                  'last_fav_count', 'profile_img')
        extra_kwargs = {
            'profile_img': {'required': False},
        }

    def get_email(self, obj):
        return obj.user.email

    def get_phone_no(self, obj):
        return obj.user.phone

    def get_user_tracking(self, obj):
        # get single record fetching from db
        # filter multiple record fetching from db
        permission = Permission.objects.get(user=obj.user)
        return permission.user_tracking

    def create(self, validated_data):
        profile_img = validated_data.pop('profile_img', None)
        print(profile_img)
        user = validated_data.get('user')
        profile = Profile.objects.create(**validated_data)
        if profile_img is not None:
            Image.objects.create(user=user, **profile_img)
        return profile

    def update(self, instance, validated_data):
        image = validated_data.pop('profile_img', None)
        pro_img = instance.profile_img
        instance.first_name = validated_data.get('first_name', instance.first_name)
        instance.last_name = validated_data.get('last_name', instance.last_name)
        instance.city = validated_data.get('city', instance.city)
        instance.is_premium = validated_data.get(
            'is_premium', instance.is_premium)
        instance.gender = validated_data.get('gender', instance.gender)
        instance.dob = validated_data.get('dob', instance.dob)
        instance.seeking_for = validated_data.get(
            'seeking_for', instance.seeking_for)
        instance.latitude = validated_data.get('latitude', instance.latitude)
        instance.longitude = validated_data.get(
            'longitude', instance.longitude)
        instance.about = validated_data.get('about', instance.about)
        instance.hobby = validated_data.get('hobby', instance.hobby)

        instance.looking_for = validated_data.get('looking_for', instance.looking_for)
        instance.religion = validated_data.get('religion', instance.religion)
        instance.occupation = validated_data.get('occupation', instance.occupation)
        instance.marital_status = validated_data.get('marital_status', instance.marital_status)
        instance.number_of_children = validated_data.get(
            'number_of_children', instance.number_of_children)
        instance.living_at_home = validated_data.get('living_at_home', instance.living_at_home)
        instance.retired = validated_data.get('retired', instance.retired)
        instance.last_msg_count = validated_data.get('last_msg_count', instance.last_msg_count)
        instance.last_fav_count = validated_data.get('last_fav_count', instance.last_fav_count)

        user = instance.user
        if image is not None and image.get('img') is not None:
            pro_img = Image.objects.create(
                img=image.get('img', None),
                is_profile=True,
                user=user
            )
            instance.profile_img = pro_img
        instance.save()
        return instance


class ProfileUpdateSerializer(serializers.Serializer):
    first_name = serializers.CharField(allow_blank=True, required=False)
    last_name = serializers.CharField(allow_blank=True, required=False)
    city = serializers.CharField(allow_blank=True, required=False)
    is_premium = serializers.BooleanField(required=False)
    gender = serializers.CharField(allow_blank=True, required=False)
    dob = serializers.DateField(required=False)
    seeking_for = serializers.CharField(allow_blank=True, required=False)
    latitude = serializers.DecimalField(
        max_digits=10, decimal_places=5, required=False)
    longitude = serializers.DecimalField(
        max_digits=10, decimal_places=5, required=False)
    about = serializers.CharField(allow_blank=True, required=False)
    hobby = serializers.CharField(allow_blank=True, required=False)
    online = serializers.BooleanField(required=False)
    looking_for = serializers.CharField(max_length=255, required=False)
    religion = serializers.CharField(max_length=50, required=False)
    occupation = serializers.CharField(max_length=50, required=False)
    retired = serializers.CharField(max_length=50, required=False)
    marital_status = serializers.CharField(max_length=50, required=False)
    number_of_children = serializers.CharField(max_length=50, required=False)
    living_at_home = serializers.CharField(max_length=50, required=False)
    last_msg_count = serializers.IntegerField(required=False)
    last_fav_count = serializers.IntegerField(required=False)
    user = serializers.IntegerField(required=False)
    image = serializers.ImageField(required=False)

    def update(self, instance, validated_data):
        image = validated_data.get('image', None)
        if image is not None:
            image_obj = Image.objects.create(
                img=image, is_profile=True, user=instance.user)
            instance.profile_img = image_obj
        instance.first_name = validated_data.get(
            'first_name', instance.first_name)
        instance.last_name = validated_data.get(
            'last_name', instance.last_name)
        instance.city = validated_data.get('city', instance.city)
        instance.is_premium = validated_data.get(
            'is_premium', instance.is_premium)
        instance.gender = validated_data.get('gender', instance.gender)
        instance.dob = validated_data.get('dob', instance.dob)
        instance.seeking_for = validated_data.get(
            'seeking_for', instance.seeking_for)
        instance.latitude = validated_data.get('latitude', instance.latitude)
        instance.longitude = validated_data.get(
            'longitude', instance.longitude)
        instance.about = validated_data.get('about', instance.about)
        instance.hobby = validated_data.get('hobby', instance.hobby)
        instance.online = validated_data.get('online', instance.online)
        instance.looking_for = validated_data.get('looking_for', instance.looking_for)
        instance.religion = validated_data.get('religion', instance.religion)
        instance.occupation = validated_data.get('occupation', instance.occupation)
        instance.marital_status = validated_data.get('marital_status', instance.marital_status)
        instance.number_of_children = validated_data.get(
            'number_of_children', instance.number_of_children)
        instance.living_at_home = validated_data.get('living_at_home', instance.living_at_home)
        instance.retired = validated_data.get('retired', instance.retired)
        instance.last_msg_count = validated_data.get('last_msg_count', instance.last_msg_count)
        instance.last_fav_count = validated_data.get('last_fav_count', instance.last_fav_count)
        instance.user = validated_data.get('user', instance.user)
        instance.save()
        return instance


class UserSerializer(ModelSerializer):
    profile = ProfileSerializer(read_only=True)
    images = ImageSerializer(many=True, read_only=True)
    #references - https://www.django-rest-framework.org/api-guide/relations/
    i_requested = FriendSerializer(many=True, read_only=True)
    they_requested = FriendSerializer(many=True, read_only=True)
    i_blocked = UserBlockedSerializer(many=True, read_only=True)
    they_blocked = UserBlockedSerializer(many=True, read_only=True)
    user_settings = PermissionSerializer(read_only=True)
    user_flirt = serializers.SerializerMethodField()
    user_request = serializers.SerializerMethodField()
    user_friend = serializers.SerializerMethodField()
    user_favou = serializers.SerializerMethodField()
    user_like = serializers.SerializerMethodField()
    user_blocked = serializers.SerializerMethodField()
    user_favou_count = serializers.SerializerMethodField()
    user_like_count = serializers.SerializerMethodField()
    unread_msg_count = serializers.SerializerMethodField()
    detail = serializers.SerializerMethodField()
    other_favou_count = serializers.SerializerMethodField()
    other_like_count = serializers.SerializerMethodField()
    friendly_only_can_msg = serializers.SerializerMethodField()

    class Meta:
        model = User
        fields = ('id', 'phone', 'is_active', 'is_staff', 'is_admin', 'email', 'created_date',
                  'blocked_date', 'deleted_date', 'last_login', 'login_by',  'deleted_by',
                  'profile', 'images', 'i_requested', 'they_requested', 'i_blocked', 'they_blocked',
                  'user_settings', 'user_flirt', 'user_request', 'user_friend', 'user_favou',
                  'user_like', 'user_blocked', 'user_favou_count', 'user_like_count',
                  'unread_msg_count', 'other_favou_count', 'other_like_count',
                  'friendly_only_can_msg', 'detail')
        read_only_fields = ('id', 'phone', 'is_staff', 'is_admin',
                            'last_login', 'created_date', )
    #obj refer those meta models
    def get_user_flirt(self, obj):
        other = self.context['request'].query_params.get('other')
        try:
            other = User.objects.get(id=other)
        except:
            other = None
        user = self.context['request'].user
        queryset = UserFlirt.objects.all()
        fav = queryset.filter(user=user, other=other).first()
        if fav:
            return 'yes-{}'.format(fav.id)
        else:
            return 'no-0'

    def get_user_request(self, obj):
        other = self.context['request'].query_params.get('other')
        try:
            other = User.objects.get(id=other)
        except:
            other = None
        user = self.context['request'].user
        queryset = Friend.objects.all()

        usr = queryset.filter(user=user, other=other).first()
        othr = queryset.filter(user=other, other=user).first()
        if usr is not None:
            return 'user-{}'.format(usr.id)
        elif othr is not None:
            return 'other-{}'.format(othr.id)
        else:
            return 'no-0'

    def get_user_friend(self, obj):
        other = self.context['request'].query_params.get('other')
        try:
            other = User.objects.get(id=other)
        except:
            other = None
        user = self.context['request'].user
        queryset = Friend.objects.all()
        usr = queryset.filter(user=user, other=other).first()
        othr = queryset.filter(user=other, other=user).first()
        if usr is not None and usr.accepted is True:
            return 'user-{}'.format(usr.id)
        elif othr is not None and othr.accepted is True:
            return 'other-{}'.format(othr.id)
        else:
            return 'no-0'

    def get_user_blocked(self, obj):
        other = self.context['request'].query_params.get('other')
        try:
            other = User.objects.get(id=other)
        except:
            other = None
        user = self.context['request'].user
        queryset = Blocked.objects.all()
        usr = queryset.filter(user=user, other=other).first()
        othr = queryset.filter(user=other, other=user).first()
        if usr is not None:
            return 'user-{}'.format(usr.id)
        elif othr is not None:
            return 'other-{}'.format(othr.id)
        else:
            return 'no-0'

    def get_user_favou(self, obj):
        other = self.context['request'].query_params.get('other')
        try:
            other = User.objects.get(id=other)
        except:
            other = None
        user = self.context['request'].user
        queryset = Favourite.objects.all()
        usr = queryset.filter(user=user, other=other).first()
        othr = queryset.filter(user=other, other=user).first()
        if usr is not None:
            return 'user-{}'.format(usr.id)
        elif othr is not None:
            return 'other-{}'.format(othr.id)
        else:
            return 'no-0'

    def get_user_like(self, obj):
        other = self.context['request'].query_params.get('other')
        try:
            other = User.objects.get(id=other)
        except:
            other = None
        user = self.context['request'].user
        queryset = UserLike.objects.all()
        usr = queryset.filter(user=user, other=other).first()
        othr = queryset.filter(user=other, other=user).first()
        if usr is not None:
            return 'user-{}'.format(usr.id)
        elif othr is not None:
            return 'other-{}'.format(othr.id)
        else:
            return 'no-0'

    def get_other_favou_count(self, obj):
        other = self.context['request'].query_params.get('other')
        try:
            other = User.objects.get(id=other)
        except:
            other = None
        return Favourite.objects.filter(other=other).count()

    def get_other_like_count(self, obj):
        other = self.context['request'].query_params.get('other')
        try:
            other = User.objects.get(id=other)
        except:
            other = None
        return UserLike.objects.filter(other=other).count()

    def get_friendly_only_can_msg(self, obj):
        other = self.context['request'].query_params.get('other')
        try:
            other = User.objects.get(id=other)
            permission = Permission.objects.get(user=other)
            return permission.friendly_only_can_msg
        except:
            other = None
            return False

    def get_user_favou_count(self, obj):
        user = self.context['request'].user
        return Favourite.objects.filter(other=user).count()

    def get_user_like_count(self, obj):
        user = self.context['request'].user
        return UserLike.objects.filter(other=user).count()

    def get_unread_msg_count(self, obj):
        user = self.context['request'].user
        #particular user unread messae filteration count
        return Message.objects.filter(other=user).filter(is_read=False).count()

    def get_detail(self, obj):
        return "yes"


class UserValidateSerializer(serializers.Serializer):
    domain = serializers.CharField()
    token = serializers.CharField()
    code = serializers.CharField(required=False)
