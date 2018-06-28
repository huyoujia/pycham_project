from django.shortcuts import render
from django.template import *
from django.http import HttpResponse
# Create your views here.


def show(request):
#获取多个参数
# def show(reque
# st,k1,k2,k3):
#     return render(request,'viewlianxi/show.html',{'name':[k1,k2,k3]})

#请求对象的属性
    #路径
    # r = request.path
    #获取方法 默认是get post请求最终也到get请求
    # r = request.method
    #返回get后面所有的参数 是一个类似于字典的对象
    # r = request.GET
    #获取键是user的所有值
    #r = request.GET.getlist('user')
    #一个类似于字典的对象，包含post请求方式的所有参数
    # r = request.POST
    #标准的字典 包含所有的cookie 键和值都是字符串
    # r = request.COOKIES

    r = request.GET
    r.get()
    return render(request,'viewlianxi/show.html',{'name':r})


def index(request):
    return render(request,'viewlianxi/reverse.html')

def gettest1(request):
    return render(request,'viewlianxi/gettest1.html')

def gettest2(request):
    r = request.GET
    return render(request,'viewlianxi/gettest2.html',{'r':r})

def gettest3(request):
    r = request.GET
    return render(request,'viewlianxi/gettest3.html',{'r':r.getlist('a')})

def posttest1(request):
    return render(request,'viewlianxi/posttest.html')

def posttest2(request):
    r = request.POST #输出<QueryDict: {'user': ['sd'], 'hobby': ['学习'], 'pwd': ['f'], 'sex': ['女']}>

    return render(request,'viewlianxi/posttest2.html',{"r":r})

def cookietest1(request):
    response = HttpResponse()
#cookie存值
    response.set_cookie('name','zhangsan')
    return response

def cookietest2(request):
#获取cookie
    cookie = request.COOKIES
    print(cookie)
    name = cookie.get('name')
    return render(request,'viewlianxi/cookietest2.html',{'name':name})