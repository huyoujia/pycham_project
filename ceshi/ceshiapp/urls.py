# @Time    : 18-6-6 下午2:24
# @Author  : huyoujia
# @Site    : 
# @File    : urls.py
# @Software: PyCharm
from django.conf.urls import url, include
from . import views

urlpatterns = [
    url(r'^index/$', views.index, name='index'),
]
