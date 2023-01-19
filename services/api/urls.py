from django.urls import include, path
from rest_framework.routers import DefaultRouter
from .views import (AddCustomerListCreateApiView,
                    AddCustomerUpdateDeleteApiView,
                    AdvertisementListCreateApiView,
                    AdvertisementUpdateDeleteApiView, FCMViewSet,
                    NotificationListCreateApiView,
                    NotificationUpdateDeleteApiView, PaymentListCreateApiView,
                    PaymentUpdateDeleteApiView, PremiumDetailListCreateApiView,
                    PremiumDetailUpdateDeleteApiView, PremiumListCreateApiView,
                    PremiumUpdateDeleteApiView, TransactionListCreateApiView,
                    TransactionUpdateDeleteApiView)

router = DefaultRouter()
router.register(r'devices', FCMViewSet, 'fcm')

urlpatterns = [
    path('', include(router.urls)),
    path('premium/', PremiumListCreateApiView.as_view(), name='premium'),
    path('premium/<int:pk>/', PremiumUpdateDeleteApiView.as_view(), name='premium-details'),
    path('transaction/', TransactionListCreateApiView.as_view(), name='transaction'),
    path('transaction/<int:pk>/', TransactionUpdateDeleteApiView.as_view(),
         name='transaction-details'),
    path('payment/', PaymentListCreateApiView.as_view(), name='payment'),
    path('payment/<int:pk>/', PaymentUpdateDeleteApiView.as_view(), name='payment-details'),
    path('advertise/', AdvertisementListCreateApiView.as_view(), name='advertise'),
    path('advertise/<int:pk>/', AdvertisementUpdateDeleteApiView.as_view(),
         name='advertise-details'),
    path('customer/', AddCustomerListCreateApiView.as_view(), name='customer'),
    path('customer/<int:pk>/', AddCustomerUpdateDeleteApiView.as_view(), name='customer-details'),
    path('notification/', NotificationListCreateApiView.as_view(), name='notification'),
    path('notification/<int:pk>/', NotificationUpdateDeleteApiView.as_view(),
         name='notification-details'),
    path('premiumdetail/', PremiumDetailListCreateApiView.as_view(), name='premiumdetail'),
    path('premiumdetail/<int:pk>/', PremiumDetailUpdateDeleteApiView.as_view(),
         name='premiumdetail-details'),
]
