from datetime import datetime
from django.db import models
from django.utils import timezone
from django.contrib.auth import get_user_model
from django.core.exceptions import ValidationError
from django.utils.translation import gettext_lazy as _
User = get_user_model()


def validate_month(value):
    ''' validate the month between 1 to 12.'''
    if value < 0 and value > 12:
        raise ValidationError(_('%(value) is not a valid month'), param={'value': value},)


def validate_year(value):
    '''validate the year is not less than current year.'''
    date = datetime.now()
    if value < date.year:
        raise ValidationError(_('%(value) is not a valid year'), param={'value': value},)


def validate_no_of_days(value):
    ''' validate the no of days valied of that plan, the days between 1 to 90 is only valied.'''
    if value < 0 and value > 90:
        raise ValidationError(_('%(value) is not a valid days '), param={'value': value},)


def upload_image(instance, filename):
    return "services/{filename}".format(filename=filename)


class Premium(models.Model):
    '''
    This Premium object going to maintain premium detail such as plan of the month,
    number of days valied and created date.
    '''
    month = models.SmallIntegerField(validators=[validate_month])
    year = models.SmallIntegerField(validators=[validate_year])
    no_of_days = models.SmallIntegerField(validators=[validate_no_of_days])
    amount = models.DecimalField(max_digits=6, decimal_places=2)
    detail = models.CharField(max_length=500, default="Details will coming soon...")
    created_date = models.DateField(auto_now=True)
    # reference_no = models.CharField(max_length=12)

    def __str__(self):
        return "%s-%s" % (self.no_of_days, self.amount)


class Transaction(models.Model):
    '''This model going to maintain payment transaction detail done through third party.'''
    PAYMENT_CHOICES = [
        ('NET', 'Net Banking'),
        ('DEBIT', 'Debit Card'),
        ('CREDIT', 'Credit Card'),
        ('OTHER', 'Other Payment'),
    ]
    transaction_id = models.CharField(max_length=70)
    status = models.CharField(max_length=20)
    amount = models.DecimalField(max_digits=8, decimal_places=2)
    mode_of_payment = models.CharField(max_length=6, choices=PAYMENT_CHOICES)
    date = models.DateTimeField(default=timezone.now)
    premium_id = models.ForeignKey(
        Premium, related_name='premium_transaction', on_delete=models.CASCADE)
    book_id = models.CharField(max_length=12, default="000000000000")

    def __str__(self):
        return self.transaction_id


class Payment(models.Model):
    '''This model going to maintain premium members validite details and trancations.'''
    user_id = models.ForeignKey(User, related_name='user_payment', on_delete=models.CASCADE)
    transaction_id = models.ForeignKey(
        Transaction, related_name='payment_transaction', on_delete=models.CASCADE)
    date_of_payment = models.DateTimeField(default=timezone.now)
    valid_upto = models.DateTimeField()
    # read only field - property
    # is valid field is based on valid upto field in model,
    # checking current plan is active or not based on boolean field true or false
    @property
    def is_valid(self):
        now = timezone.now()
        if now < self.valid_upto:
            self.user_id.profile.is_premium = True
            self.user_id.profile.save()
            return True
        self.user_id.profile.is_premium = False
        self.user_id.profile.save()
        return False

    def __str__(self):
        return "%s payment" % str(self.user_id.profile.first_name)

# completed 24/1/23
class AddCustomer(models.Model):
    '''Customer detail of advertisement company'''
    name_of_customer = models.CharField(max_length=100)
    email_of_customer = models.EmailField()
    phone_of_customer = models.CharField(max_length=15)
    company_name = models.CharField(max_length=60)


class Advertisement(models.Model):
    customer = models.ForeignKey(AddCustomer, related_name='customer_add',
                                 on_delete=models.CASCADE, null=True)
    image = models.ImageField(upload_to=upload_image)
    created_date = models.DateField(auto_now=True)
    from_date_to_display = models.DateField(null=True)
    to_date_to_display = models.DateField()
    staff = models.ForeignKey(get_user_model(), related_name='add_payment',
                              on_delete=models.CASCADE)


class Notification(models.Model):
    user = models.ForeignKey(get_user_model(), related_name='user_noti', on_delete=models.CASCADE)
    other = models.ForeignKey(get_user_model(), related_name='other_noti',
                              on_delete=models.CASCADE)
    date = models.DateTimeField(default=timezone.now)
    is_read = models.BooleanField(default=False)
    msg = models.CharField(max_length=250)

    def __str__(self):
        return "%s to %s" % (str(self.user.profile.first_name), str(self.other.profile.first_name))


class PremiumDetail(models.Model):
    detail = models.CharField(max_length=500, default="...")

    def __str__(self):
        return "%s" % self.detail
