from django.contrib import admin
from .models import *
# Register your models here.

class ArticleInfo(admin.ModelAdmin):
    list_display = ['atitle','acontent','apub_datetime','aread']
    search_fields = ['atitle']
admin.site.register(Article,ArticleInfo)

