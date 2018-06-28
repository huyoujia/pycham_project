# @Time    : 18-6-15 上午8:32
# @Author  : huyoujia
# @Site    : 
# @File    : urls.py
# @Software: PyCharm
from django.conf.urls import url
from .views import RegisterView,LoginView,index

urlpatterns = [
    url(r'^index',index,name='index'),
    url(r'^register/$',RegisterView.as_view(),name='register'),
    url(r'^login/$',LoginView.as_view(),name='login'),
    # url(r'^logout/$',LoginView.as_view(),name='logout'),
    #

]

