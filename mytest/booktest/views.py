from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader, RequestContext
from .models import *


# Create your views here.
def HelloWorld(request, indeexx):
    template = loader.get_template('booktest/index.html')
    # 第一种方法传
    # context = {'name':['胡宥嘉' , '王俊凯']}
    # return HttpResponse(template.render(context))
    hlist = HeroInfo.objects.all()
    context = {'name': hlist, 'url': indeexx}
    return HttpResponse(template.render(context))


def detal(request, x):
    tem = loader.get_template('booktest/detal.html')
    hero = HeroInfo.objects.get(pk=x)
    context = {'hero': hero}
    return HttpResponse(tem.render(context))


def index(request,):

    return render(request, 'booktest/index.html')
