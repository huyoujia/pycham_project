from django.conf.urls import include, url
from myblog import views
urlpatterns = [
    #首页
    url(r'^index/$',views.index, name='index'),
    #详情
    url(r'^detail/(\d+)/$',views.detail, name='detail'),
    #编辑
    url(r'^editpage/$',views.editpage, name='editpage'),
    #编辑的提交
    url(r'^editpagehandle/$',views.editpagehandle, name='editpagehandle'),
    #修改
    url(r'^change/(\d*)$',views.change, name='change'),
    url(r'^changehandle/(\d*)$',views.changehandle, name='changehandle'),
    #删除
    url(r'^delete/(\d*)$',views.delete, name='delete'),
]
