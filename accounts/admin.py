from django.contrib import admin
from django.contrib.auth import get_user_model
from django.utils.translation import gettext_lazy as _
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
from django.contrib.auth.forms import (AdminPasswordChangeForm, UserChangeForm,
                                       UserCreationForm)
from .models import (Blocked, Comment, Favourite, Friend, Image, ImageLike,
                     Message, Permission, Profile, UserLike, UserViewed)
User = get_user_model()


class UserAdmin(BaseUserAdmin):
    form = UserChangeForm
    add_form = UserCreationForm
    change_password_form = AdminPasswordChangeForm

    ordering = ['id', ]

    list_display = ['email', 'phone', ]

    filter_horizontal = ()

    list_filter = ()

    search_fields = ('email', 'phone')

    readonly_fields = ('created_date',)

    fieldsets = (
        (None, {'fields': ('email', 'password')}),
        (_('Personal Info'), {'fields': ('login_by', 'phone', 'code',)}),
        (_('Permission'), {'fields': ('is_active', 'is_staff', 'is_admin', )}),
        (_('Important Dates'), {'fields': ('last_login', 'created_date',)}),
    )

    add_fieldsets = (
        (None, {
            # 'classes': ('wide',),
            'fields': ('email', 'password1', 'password2'),
        }),
    )


admin.site.register(User, UserAdmin)
admin.site.register(Profile)
admin.site.register(Image)
admin.site.register(Favourite)
admin.site.register(UserLike)
admin.site.register(UserViewed)
admin.site.register(ImageLike)
admin.site.register(Comment)
admin.site.register(Friend)
admin.site.register(Message)
admin.site.register(Blocked)
admin.site.register(Permission)
