import email
from django.db import models

# Create your models here.


class SignUpMember(models.Model):
    firstname = models.CharField(max_length=255)
    lastname = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
