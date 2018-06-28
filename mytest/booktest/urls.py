from django.conf.urls import include, url
from django.contrib import admin
from . import views
urlpatterns = [
    url(r'(index)/$', views.HelloWorld),
    url(r'index/(\d+)$', views.index, name='index')
]