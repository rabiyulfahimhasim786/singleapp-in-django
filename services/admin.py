from django.contrib import admin
from services.models import (AddCustomer, Advertisement, Notification, Payment,
                             Premium, PremiumDetail, Transaction)


admin.site.register(AddCustomer)
admin.site.register(Advertisement)
admin.site.register(Notification)
admin.site.register(Payment)
admin.site.register(Premium)
admin.site.register(PremiumDetail)
admin.site.register(Transaction)
