from django.shortcuts import render,redirect
from django.core.urlresolvers import reverse
from .models import *
from django.http import HttpResponse
import hashlib
# Create your views here.
def index(request):
    a=User.objects.all()
    return render(request,'jishiapp/index.html',{'a':a})

#注册
def register(request):

    return render(request,'jishiapp/register.html')

def registerhandle(request):
    name = request.POST.get('uname')
    pwd = request.POST.get('upwd')
    pw1 = doPwd(pwd)
    b = denglu()
    b.name = name
    b.pwd = pw1
    b.save()
    return redirect(reverse('jishi:index'))

#登录
def login(request):
    return render(request,'jishiapp/login.html')

def loginhandle(request):
    uname = request.POST.get('uname')
    upwd = request.POST.get('upwd')
    pw2 = doPwd(upwd)
    user = denglu.objects.get(name=uname)
    if user.pwd == pw2:
        return HttpResponse('登录成功')
    else:
        return HttpResponse('登录失败')

def doPwd(pwd):
    '''sha1编码'''
    mysha1 = hashlib.sha1()
    mysha1.update(pwd.encode('utf-8'))
    pwd = mysha1.hexdigest()
    return pwd

#留言板
def liuyanban(request):
    return render(request,'jishiapp/liuyanban.html')

def liuyanban_handle(request):
    name = request.POST.get('name')
    email = request.POST.get('email')
    address = request.POST.get('address')
    message = request.POST.get('message')
    a = User()
    a.name = name
    a.email = email
    a.address = address
    a.message = message
    a.save()
    return redirect(reverse('jishi:index'))