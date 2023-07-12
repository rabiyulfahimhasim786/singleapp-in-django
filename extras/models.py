from django.db import models
from django.contrib.auth import get_user_model


class Help(models.Model):
    question = models.CharField(max_length=250)
    answer = models.TextField()
    date = models.DateField(auto_now_add=True)
    staff = models.ForeignKey(get_user_model(), on_delete=models.CASCADE)


class Feedback(models.Model):
    feed = models.CharField(max_length=250)
    date = models.DateField(auto_now_add=True)
    user = models.ForeignKey(get_user_model(), on_delete=models.CASCADE)


class About(models.Model):
    about_single = models.TextField()
    date = models.DateField(auto_now_add=True)


class TermsAndConditions(models.Model):
    terms = models.TextField()
    date = models.DateField(auto_now_add=True)
