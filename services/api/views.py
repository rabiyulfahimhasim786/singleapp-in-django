from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from rest_framework.generics import (ListCreateAPIView, RetrieveUpdateDestroyAPIView)
from fcm_django.models import FCMDevice
from fcm_django.api.rest_framework import FCMDeviceAuthorizedViewSet
from services.models import (AddCustomer, Advertisement, Notification, Payment,
                             Premium, PremiumDetail, Transaction)
from .serializers import (AddCustomerSerializer, AdvertisementSerializer,
                          NotificationSerializer, PaymentSerializer,
                          PremiumDetailSerializer, PremiumSerializer,
                          TransactionSerializer)


def data_slice(record, count):
    num = 25
    if count is not None:
        count = int(count)
        if count == 0:
            return record[:num]
        else:
            return record[count * num:(count + 1) * num]
    return record


class PremiumListCreateApiView(ListCreateAPIView):
    queryset = Premium.objects.all()
    serializer_class = PremiumSerializer
    permission_classes = [IsAuthenticated, ]


class PremiumUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = Premium.objects.all()
    serializer_class = PremiumSerializer
    permission_classes = [IsAuthenticated, ]


class TransactionListCreateApiView(ListCreateAPIView):
    queryset = Transaction.objects.all()
    serializer_class = TransactionSerializer
    permission_classes = [IsAuthenticated, ]


class TransactionUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = Transaction.objects.all()
    serializer_class = TransactionSerializer
    permission_classes = [IsAuthenticated, ]


class PaymentListCreateApiView(ListCreateAPIView):
    queryset = Payment.objects.all()
    serializer_class = PaymentSerializer
    permission_classes = [IsAuthenticated, ]

    def get_queryset(self):
        user_id = self.request.query_params.get("userid", None)
        queryset = Payment.objects.all()
        if user_id is not None:
            queryset = queryset.filter(user_id=user_id)
        return queryset


class PaymentUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = Payment.objects.all()
    serializer_class = PaymentSerializer
    permission_classes = [IsAuthenticated, ]


class AdvertisementListCreateApiView(ListCreateAPIView):
    queryset = Advertisement.objects.all()
    serializer_class = AdvertisementSerializer
    permission_classes = [IsAuthenticated, ]


class AdvertisementUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = Advertisement.objects.all()
    serializer_class = AdvertisementSerializer
    permission_classes = [IsAuthenticated, ]


class AddCustomerListCreateApiView(ListCreateAPIView):
    queryset = AddCustomer.objects.all()
    serializer_class = AddCustomerSerializer
    permission_classes = [IsAuthenticated, ]


class AddCustomerUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = AddCustomer.objects.all()
    serializer_class = AddCustomerSerializer
    permission_classes = [IsAuthenticated, ]


class FCMViewSet(FCMDeviceAuthorizedViewSet):
    # authentication_classes = (TokenAuthentication, BasicAuthentication, SessionAuthentication)
    pass


class NotificationListCreateApiView(ListCreateAPIView):
    queryset = Notification.objects.all()
    serializer_class = NotificationSerializer
    permission_classes = [IsAuthenticated, ]

    def post(self, request, format='json'):
        title = "Single App"
        msg = request.data.get('msg', None)
        other = request.data.get('other', None)
        serializer = NotificationSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            devices = FCMDevice.objects.filter(user__in=other)
            devices.send_message(title=title, body=msg)
            return Response({'status': 'success'})
        return Response({'status': 'failure'})

    def get_queryset(self):
        user = self.request.user
        count = self.request.query_params.get('count', None)
        notifi = Notification.objects.all()
        notification = notifi.filter(other=user).order_by('-id')
        for d in notification:
            if d.is_read is False:
                d.is_read = True
                d.save()
        return data_slice(notification, count)


class NotificationUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = Notification.objects.all()
    serializer_class = NotificationSerializer
    permission_classes = [IsAuthenticated, ]


class PremiumDetailListCreateApiView(ListCreateAPIView):
    queryset = PremiumDetail.objects.all()
    serializer_class = PremiumDetailSerializer
    permission_classes = [IsAuthenticated, ]


class PremiumDetailUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = PremiumDetail.objects.all()
    serializer_class = PremiumDetailSerializer
    permission_classes = [IsAuthenticated, ]
