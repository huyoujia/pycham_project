from django.conf.urls import include, url
from jishiapp import views
urlpatterns = [
    url(r'^index/$',views.index, name='index'),
    #注册
    url(r'^register/$', views.register, name='register'),
    url(r'^registerhandle/$', views.registerhandle, name='registerhandle'),
    url(r'^login/$', views.login, name='login'),
    url(r'^loginhandle/$', views.loginhandle, name='loginhandle'),
    #留言板
    url(r'^liuyanban/$',views.liuyanban, name='liuyanban'),
    url(r'^liuyanbanhandle/$', views.liuyanban_handle, name='liuyanbanhandle'),

]