
from rest_framework.permissions import IsAuthenticated
from rest_framework.generics import (ListCreateAPIView,
                                     RetrieveUpdateDestroyAPIView)
from extras.models import About, Feedback, Help, TermsAndConditions
from .serializers import (AboutSerializer, FeedbackSerializer, HelpSerializer,
                          TermsAndConditionSerializer)


class HelpListCreateApiView(ListCreateAPIView):
    queryset = Help.objects.all()
    serializer_class = HelpSerializer
    permission_classes = [IsAuthenticated]


class HelpUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = Help.objects.all()
    serializer_class = HelpSerializer
    permission_classes = [IsAuthenticated]


class FeedbackListCreateApiView(ListCreateAPIView):
    queryset = Feedback.objects.all()
    serializer_class = FeedbackSerializer
    permission_classes = [IsAuthenticated]


class AboutListCreateApiView(ListCreateAPIView):
    queryset = About.objects.all()
    serializer_class = AboutSerializer
    permission_classes = [IsAuthenticated]


class AboutUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = About.objects.all()
    serializer_class = AboutSerializer
    permission_classes = [IsAuthenticated]


class TermsAndConditionListCreateApiView(ListCreateAPIView):
    queryset = TermsAndConditions.objects.all()
    serializer_class = TermsAndConditionSerializer
    permission_classes = [IsAuthenticated]


class TermsAndConditionUpdateDeleteApiView(RetrieveUpdateDestroyAPIView):
    queryset = TermsAndConditions.objects.all()
    serializer_class = TermsAndConditionSerializer
    permission_classes = [IsAuthenticated]
