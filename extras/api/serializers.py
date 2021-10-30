from rest_framework import serializers
from rest_framework.serializers import ModelSerializer
from extras.models import About, Feedback, Help, TermsAndConditions


class HelpSerializer(ModelSerializer):
    class Meta:
        model = Help
        fields = ('id', 'question', 'answer', 'date', 'staff')


class FeedbackSerializer(ModelSerializer):
    user_name = serializers.SerializerMethodField()

    class Meta:
        model = Feedback
        fields = ('id', 'feed', 'date', 'user_name', 'user')

    def get_user_name(self, obj):
        last_name = obj.user.profile.last_name if obj.user.profile.last_name else ""
        return "%s %s" % (obj.user.profile.first_name, last_name)


class AboutSerializer(ModelSerializer):
    class Meta:
        model = About
        fields = ('id', 'about_single', 'date')


class TermsAndConditionSerializer(ModelSerializer):
    class Meta:
        model = TermsAndConditions
        fields = ('id', 'terms', 'date')
