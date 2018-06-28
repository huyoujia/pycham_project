from django.shortcuts import render
from django.views.generic.base import View
from .models import UserInfo
from django.contrib.auth.hashers import make_password
from django.contrib.auth import authenticate, login, logout


# Create your views here.
# 注册



def index(request):
    return render(request,'index.html')
class RegisterView(View):
    def get(self, request):
        return render(request,'register.html')

    def post(self, request):
        user_name = request.POST.get('user_name')
        pwd = request.POST.get('pwd')

        user = UserInfo()
        user.username = user_name
        user.password = make_password(pwd)
        user.is_active = True

        user.save()
        return render(request, 'login.html')


# 登录
class LoginView(View):
    def get(self, request):
        pass

    def post(self, request):
        uname = request.POST.get('username')
        upwd = request.POST.get('pwd')
        # 查找传的数据是否跟数据库里的一样
        user = authenticate(username=uname, password=upwd)
        if user:
            if user.is_active:
                login(request, user)
                return render(request,'index.html')
            else:
                return render(request,'login.html')

        else:
            return render(request,'login.html')