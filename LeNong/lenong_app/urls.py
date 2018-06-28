# @Time    : 18-6-15 上午8:32
# @Author  : huyoujia
# @Site    : 
# @File    : urls.py
# @Software: PyCharm

from django.conf.urls import url
from .views import index

urlpatterns = [
    url(r'^index/$', index, name='index'),

]

