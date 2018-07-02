from django.db import models
from django.contrib.auth.models import AbstractUser
from ckeditor.fields import RichTextField
# Create your models here.
class UserInfo(AbstractUser):
    name = models.CharField(max_length=50,default='',verbose_name='用户昵称')

class User(models.Model):
    title = models.CharField(max_length=50)
    content = RichTextField()