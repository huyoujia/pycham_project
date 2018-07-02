from django.shortcuts import render, HttpResponse
from .models import UserInfo
from django.contrib.auth import authenticate, login
from django.contrib.auth.hashers import make_password
from .models import User

# Create your views here.
def index(request):
    return render(request, 'index.html')


# 注册
def register(request):
    username = request.POST.get('user_name')
    password = request.POST.get('password')
    email = request.POST.get('address')

    user = UserInfo()
    user.username = username
    user.password = make_password(password)
    user.email = email
    user.is_active = True

    user.save()

    return render(request, 'index.html')


# 登录
def user_login(request):
    username = request.POST.get('user_name')
    password = request.POST.get('password')

    user = authenticate(username=username, password=password)
    if user:
        if user.is_active:
            login(request, user)
            info_list = User.objects.all()
            ctx = {
                'info_list':info_list,
            }
            return render(request,'test.html',ctx)
        else:
            return render(request, 'index.html', {'error_msg': '用户未激活'})
    else:
        return render(request, 'index.html', {'error_msg': '账号或密码错误'})
