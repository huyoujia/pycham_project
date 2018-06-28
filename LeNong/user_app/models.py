from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.


class UserInfo(AbstractUser):
    nikename = models.CharField(max_length=30,default='',verbose_name='昵称')
    
