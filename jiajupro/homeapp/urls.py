# @Time    : 18-6-19 下午7:24
# @Author  : huyoujia
# @Site    : 
# @File    : urls.py
# @Software: PyCharm
from django.conf.urls import url
from .views import index, guanyu,zhanshi,dingzhi,dongtai,zixun,lianxiwomen,detail
urlpatterns = [
    url(r'^index/', index, name='index'),
    url(r'^indexwo/(?P<th>[0-9]+)/$', index, name='indexwo'),
    url(r'^guanyu/', guanyu, name='guanyu'),
    url(r'^zhanshi/',zhanshi,name='zhanshi'),
    url(r'^show/(\d+)/$',zhanshi,name='show'),

    url(r'^dingzhi/',dingzhi,name='dingzhi'),
    url(r'dongtai/',dongtai,name='dongtai'),

    url(r'^zixun/',zixun,name='zixun'),
    url(r'^lianxiwomen/',lianxiwomen,name='lianxiwomen'),
    url(r'^detail/(\d+)/$', detail, name='detail'),
    # url(r'show_deatil/(\d+)/$', detail, name='showdetail'),


]
