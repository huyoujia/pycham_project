# @Time    : 18-6-29 下午2:43
# @Author  : huyoujia
# @Site    : 
# @File    : urls.py
# @Software: PyCharm
from django.conf.urls import url,include
from userapp import views
urlpatterns = [
    url(r'^index/',views.index,name='index'),
    url(r'^register/$',views.register,name='register'),
    url(r'^login/$',views.user_login,name='login')
]
