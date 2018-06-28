from django.db import models

# Create your models here.
#留言板
class User(models.Model):
    name = models.CharField(max_length=20)
    email = models.CharField(max_length=30)
    address = models.CharField(max_length=40)
    message = models.CharField(max_length=1000)

class denglu(models.Model):
    name = models.CharField(max_length=200)
    pwd = models.CharField(max_length=200)
