from datetime import date
# from django.utils.translation import ugettext_lazy as _
from django.contrib.auth import get_user_model
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager
from django.utils import timezone
from django.db import models


def upload_image(instance, filename):
    return "accounts/{user}/{filename}".format(user=instance.user.id, filename=filename)


class MyUserManager(BaseUserManager):
    def create_user(self, email, password=None, **extra_fields):
        """
        Creates and saves a User with the given email, date of
        birth and password.
        """
        if not email:
            raise ValueError('Users must have an email address')

        user = self.model(
            email=self.normalize_email(email),
            **extra_fields
        )
        user.is_active = True
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, email, password=None, **extra_fields):
        """
        Creates and saves a superuser with the given email, date of
        birth and password.
        """
        user = self.create_user(
            email,
            password=password,
            **extra_fields
        )
        user.is_active = True
        user.is_staff = True
        user.is_admin = True
        user.save(using=self._db)
        return user


class MyUser(AbstractBaseUser):
    ACTION_BY = [('U', 'user'), ('A', 'admin'), ('O', 'None')]
    LOGIN_BY = [('N', 'normal'), ('E', 'email')]
    phone = models.CharField(max_length=16, unique=True, null=True)
    email = models.EmailField(max_length=26, unique=True)
    is_active = models.BooleanField(default=False)
    is_staff = models.BooleanField(default=False)
    is_admin = models.BooleanField(default=False)
    created_date = models.DateField(auto_now_add=True)
    blocked_date = models.DateField(null=True)
    deleted_date = models.DateField(null=True)
    code = models.CharField(max_length=6, default='000000')
    deleted_by = models.CharField(max_length=1, choices=ACTION_BY, null=True, default='O')
    login_by = models.CharField(max_length=1, choices=LOGIN_BY, default='N')

    USERNAME_FIELD = 'email'

    objects = MyUserManager()

    def has_perm(self, perm, obj=None):
        "Does the user have a specific permission?"
        return True

    def has_module_perms(self, app_label):
        "Does the user have permissions to view the app `app_label`?"
        return True

    def get_full_name(self):
        return self.email

    def get_short_name(self):
        return self.email

    def __str__(self):
        return "%s - %s" % (self.email, self.code)


class Image(models.Model):
    img = models.ImageField(upload_to=upload_image, null=True)
    is_profile = models.BooleanField()
    created_date = models.DateField(auto_now_add=True)
    user = models.ForeignKey(get_user_model(), related_name='images', on_delete=models.CASCADE)

    def __str__(self):
        return "{} - {}".format(self.img, self.user)


class Profile(models.Model):
    SEX = [('M', 'male'), ('F', 'female')]
    SEEKING = [('M', 'male'), ('F', 'female'), ('B', 'both')]
    DOMAIN = [('W', 'Web'), ('M', 'Mobile')]

    first_name = models.CharField(max_length=50, null=True, blank=True)
    last_name = models.CharField(max_length=50, null=True)
    dob = models.DateField(null=True, blank=True)
    city = models.CharField(max_length=200, default="")
    is_premium = models.BooleanField(default=False)
    gender = models.CharField(max_length=1, choices=SEX, blank=True)
    seeking_for = models.CharField(max_length=1, choices=SEEKING, blank=True)
    latitude = models.DecimalField(max_digits=12, decimal_places=8, default=0.0)
    longitude = models.DecimalField(max_digits=12, decimal_places=8, default=0.0)
    about = models.CharField(max_length=255, default="")
    hobby = models.CharField(max_length=255, default="")
    online = models.BooleanField(default=False)
    looking_for = models.CharField(max_length=255,  default="")
    religion = models.CharField(max_length=255,  default="")
    occupation = models.CharField(max_length=255, default="")
    retired = models.CharField(max_length=255,  default="")
    marital_status = models.CharField(max_length=255,  default="")
    number_of_children = models.CharField(max_length=255, default="")
    living_at_home = models.CharField(max_length=255,  default="")
    last_msg_count = models.IntegerField(default=0)
    last_fav_count = models.IntegerField(default=0)
    domain = models.CharField(max_length=1, choices=DOMAIN, default="W")
    profile_img = models.ForeignKey('Image', on_delete=models.CASCADE, null=True, blank=True)
    user = models.OneToOneField(get_user_model(), related_name='profile', on_delete=models.CASCADE)

    def __str__(self):
        if self.first_name is not None:
            return self.first_name
        return self.user.email

    @property
    def age(self):
        today = date.today()
        if self.dob is not None:
            age = today.year - self.dob.year - ((today.month, today.day) <
                                                (self.dob.month, self.dob.day))
            return age
        return None


class Favourite(models.Model):
    user = models.ForeignKey(get_user_model(), related_name='user_my_favou',
                             on_delete=models.CASCADE)
    other = models.ForeignKey(
        get_user_model(), related_name='user_they_favou', on_delete=models.CASCADE)
    date = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return "{} - favourite is - {}".format(self.user.email, self.other.email)


class UserLike(models.Model):
    user = models.ForeignKey(get_user_model(), related_name='user_my_like',
                             on_delete=models.CASCADE)
    other = models.ForeignKey(
        get_user_model(), related_name='user_they_like', on_delete=models.CASCADE)
    date = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return "{} - likes - {}".format(self.user.email, self.other.email)


class UserViewed(models.Model):
    user = models.ForeignKey(get_user_model(), related_name='user_my_views',
                             on_delete=models.CASCADE)
    other = models.ForeignKey(
        get_user_model(), related_name='user_they_views', on_delete=models.CASCADE)
    date = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return "{} - viewed - {}".format(self.user.email, self.other.email)


class ImageLike(models.Model):
    user = models.ForeignKey(get_user_model(), related_name='image_my_likes',
                             on_delete=models.CASCADE)
    other = models.ForeignKey(
        get_user_model(), related_name='image_they_likes', on_delete=models.CASCADE)
    image_id = models.ForeignKey(Image, related_name='likeimage', on_delete=models.CASCADE)
    date = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return "{} -  likes - {} image".format(self.user.email, self.other.email)


class Comment(models.Model):
    user = models.ForeignKey(
        get_user_model(), related_name='image_my_comment', on_delete=models.CASCADE)
    other = models.ForeignKey(
        get_user_model(), related_name='image_they_comment', on_delete=models.CASCADE)
    image = models.ForeignKey(Image, related_name='commentimage', on_delete=models.CASCADE)
    msg = models.CharField(max_length=250)
    date = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return "{} - comments - {} image".format(self.user.email, self.other.email)


class UserFlirt(models.Model):
    user = models.ForeignKey(get_user_model(), related_name='user_i_flirt',
                             on_delete=models.CASCADE)
    other = models.ForeignKey(
        get_user_model(), related_name='user_they_flirt',  on_delete=models.CASCADE)
    date = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return "{} - flirted - {}".format(self.user.email, self.other.email)


class Message(models.Model):
    user = models.ForeignKey(get_user_model(), related_name='i_messaged', on_delete=models.CASCADE)
    other = models.ForeignKey(
        get_user_model(), related_name='they_messaged', on_delete=models.CASCADE)
    msg = models.CharField(max_length=500)
    is_read = models.BooleanField(default=False)
    date = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return "{} - messaged to - {} ".format(self.user.email, self.other.email)


class Friend(models.Model):
    user = models.ForeignKey(get_user_model(), related_name='i_requested',
                             on_delete=models.CASCADE)
    other = models.ForeignKey(
        get_user_model(), related_name='they_requested', on_delete=models.CASCADE)
    accepted = models.BooleanField(default=False)
    date = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return "{} - friend to - {} ".format(self.user.email, self.other.email)


class Blocked(models.Model):
    user = models.ForeignKey(get_user_model(), related_name='i_blocked', on_delete=models.CASCADE)
    other = models.ForeignKey(get_user_model(), related_name='they_blocked',
                              on_delete=models.CASCADE)
    date = models.DateTimeField(default=timezone.now)

    def __str__(self):
        return "{} - blocked to - {} ".format(self.user.email, self.other.email)


class Permission(models.Model):
    user_tracking = models.BooleanField(default=False)
    hide_online_status = models.BooleanField(default=False)
    friendly_only_can_msg = models.BooleanField(default=False)
    only_friend_can_comment = models.BooleanField(default=False)
    friendly_only_can_view_profile = models.BooleanField(default=False)
    premium_members_only_msg = models.BooleanField(default=False)
    premium_members_only_view = models.BooleanField(default=False)
    user = models.OneToOneField(
        get_user_model(), related_name='user_settings', on_delete=models.CASCADE)

    def __str__(self):
        return "{} - permissions".format(self.user.email)
