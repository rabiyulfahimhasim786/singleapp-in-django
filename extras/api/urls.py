from django.urls import path

from .views import (AboutListCreateApiView, AboutUpdateDeleteApiView,
                    FeedbackListCreateApiView, HelpListCreateApiView,
                    HelpUpdateDeleteApiView,  TermsAndConditionListCreateApiView,
                    TermsAndConditionUpdateDeleteApiView)

urlpatterns = [
    path('help/', HelpListCreateApiView.as_view(), name='help'),
    path('help/<int:pk>/', HelpUpdateDeleteApiView.as_view(), name='help-detail'),
    path('feedback/', FeedbackListCreateApiView.as_view(), name='feedback'),
    path('about/', AboutListCreateApiView.as_view(), name='about'),
    path('about/<int:pk>/', AboutUpdateDeleteApiView.as_view(), name='about-detail'),
    path('terms/', TermsAndConditionListCreateApiView.as_view(), name='TermsAndConditions'),
    path('terms/<int:pk>/', TermsAndConditionUpdateDeleteApiView.as_view(),
         name='TermsAndConditions-detail'),
]
