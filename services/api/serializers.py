from datetime import timedelta
from rest_framework import serializers
from accounts.models import Image, Profile
from services.models import (AddCustomer, Advertisement, Notification, Payment,
                             Premium, PremiumDetail, Transaction)


def date_time_format(date):
    if date is not None:
        return date.strftime("%d %b %Y T %I:%M %P")
    else:
        return " "


class PremiumSerializer(serializers.ModelSerializer):
    class Meta:
        model = Premium
        fields = ('id', 'month', 'year', 'no_of_days', 'amount', 'detail',
                  'created_date')


class TransactionSerializer(serializers.ModelSerializer):

    class Meta:
        model = Transaction
        fields = ('id',  'status', 'amount', 'date',
                  'mode_of_payment', 'transaction_id', 'premium_id', 'book_id')

    def create(self, validated_data):
        user = self.context['request'].user
        transaction = Transaction.objects.create(**validated_data)
        validate_time = transaction.date + timedelta(days=transaction.premium_id.no_of_days)
        payment = Payment(user_id=user, transaction_id=transaction, valid_upto=validate_time)
        payment.save()
        user.profile.is_premium = True
        user.profile.save()
        return transaction


class PaymentSerializer(serializers.ModelSerializer):
    email = serializers.SerializerMethodField()
    phone = serializers.SerializerMethodField()
    first_name = serializers.SerializerMethodField()
    last_name = serializers.SerializerMethodField()
    payment_status = serializers.SerializerMethodField()
    mode_of_payment = serializers.SerializerMethodField()
    amount = serializers.SerializerMethodField()
    book_id = serializers.SerializerMethodField()
    no_of_days = serializers.SerializerMethodField()
    date_of_payments = serializers.SerializerMethodField()
    time_of_payments = serializers.SerializerMethodField()
    date_of_valid = serializers.SerializerMethodField()
    time_of_valid = serializers.SerializerMethodField()

    class Meta:
        model = Payment
        fields = ('id', 'user_id', 'transaction_id', 'date_of_payments', 'time_of_payments',
                  'date_of_valid', 'time_of_valid', 'is_valid', 'email', 'phone', 'first_name',
                  'last_name', 'payment_status', 'mode_of_payment', 'amount', 'no_of_days',
                  'book_id')

    def get_date_of_payments(self, obj):
        return obj.date_of_payment.strftime('%Y-%m-%d')

    def get_time_of_payments(self, obj):
        return obj.date_of_payment.strftime('%H:%M')

    def get_date_of_valid(self, obj):
        return obj.valid_upto.strftime('%Y-%m-%d')

    def get_time_of_valid(self, obj):
        return obj.valid_upto.strftime('%H:%M')

    def get_email(self, obj):
        return obj.user_id.email

    def get_phone(self, obj):
        return obj.user_id.phone

    def get_first_name(self, obj):
        try:
            profile = Profile.objects.get(id=obj.user_id.id)
        except:
            return None
        return profile.first_name

    def get_last_name(self, obj):
        try:
            profile = Profile.objects.get(id=obj.user_id.id)
        except:
            return None
        return profile.last_name

    def get_payment_status(self, obj):
        return obj.transaction_id.status

    def get_mode_of_payment(self, obj):
        return obj.transaction_id.mode_of_payment

    def get_amount(self, obj):
        return obj.transaction_id.amount

    def get_book_id(self, obj):
        return obj.transaction_id.book_id

    def get_no_of_days(self, obj):
        return obj.transaction_id.premium_id.no_of_days


class NotificationSerializer(serializers.ModelSerializer):
    u_first_name = serializers.SerializerMethodField()
    u_last_name = serializers.SerializerMethodField()
    u_city = serializers.SerializerMethodField()
    u_image = serializers.SerializerMethodField()
    o_first_name = serializers.SerializerMethodField()
    o_last_name = serializers.SerializerMethodField()
    o_city = serializers.SerializerMethodField()
    u_is_premium = serializers.SerializerMethodField()
    u_online = serializers.SerializerMethodField()
    o_is_premium = serializers.SerializerMethodField()
    o_online = serializers.SerializerMethodField()
    str_date = serializers.SerializerMethodField()

    class Meta:
        model = Notification
        fields = ('id', 'msg', 'user', 'other', 'is_read', 'str_date', 'u_first_name',
                  'u_last_name', 'u_city', 'u_is_premium', 'u_online', 'o_is_premium', 'o_online',
                  'u_image', 'o_first_name', 'o_last_name',  'o_city')

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


class AdvertisementSerializer(serializers.ModelSerializer):
    class Meta:
        model = Advertisement
        fields = ('id', 'customer', 'image', 'created_date',
                  'from_date_to_display', 'to_date_to_display', 'staff')


class AddCustomerSerializer(serializers.ModelSerializer):
    class Meta:
        model = AddCustomer
        fields = '__all__'


class PremiumDetailSerializer(serializers.ModelSerializer):
    class Meta:
        model = PremiumDetail
        fields = '__all__'
