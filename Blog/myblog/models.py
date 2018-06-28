from django.db import models

# Create your models here.
class Article(models.Model):
    atitle = models.CharField(max_length=100,null=False)
    acontent = models.TextField()
    apub_datetime = models.DateTimeField(auto_now=True)
    aread = models.IntegerField()
    isDelete = models.BooleanField(default=False)

