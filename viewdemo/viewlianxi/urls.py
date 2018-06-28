from django.conf.urls import include, url
from viewlianxi import views

urlpatterns = [
#获取多个参数 返回的字符串
    url(r'^(?P<k1>\d+)/(?P<k2>\d+)/(?P<k3>\d+)',views.show),
    url(r'^demo$',views.show),
    # url(r'^index$',views.index,name='ind'),
    url(r'^index',views.index),
    url(r'^gettest1/$',views.gettest1),
    url(r'^gettest2/$',views.gettest2),
    url(r'^gettest3/$',views.gettest3),
    url(r'^posttest1/$', views.posttest1),
    url(r'^posttest2/$', views.posttest2),
    url(r'^cookie/$', views.cookietest1),
    url(r'^cookie2/$', views.cookietest2),


]
