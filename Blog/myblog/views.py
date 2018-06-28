from django.shortcuts import render,HttpResponse,redirect
from .models import *
from django.core.urlresolvers import reverse
# Create your views here.
#首页
def index(request):
    list = Article.objects.filter(isDelete=False)
    return render(request,'myblog/index.html',{'list':list,})
#详情
def detail(request,id):
    article = Article.objects.get(pk=id)
    content = {'article':article}
    return render(request,'myblog/detail.html',content)
#编辑
def editpage(request):
    return render(request,'myblog/editpage.html')

#编辑的提交
def editpagehandle(request):
    title = request.POST.get('title','')
    content = request.POST.get('content','')
    a = Article()
    a.atitle = title
    a.acontent = content
    a.aread = 0
    # a.apub_datetime = True
    a.save()
    return redirect(reverse('blog:index'))

#编辑修改
def changehandle(request,id):
    a = Article.objects.get(pk=id)
    return render(request,'myblog/change.html',{'a':a})
def change(request,id):
    title = request.POST.get('title', '')
    content = request.POST.get('content', '')
    a = Article.objects.get(pk=id)
    a.atitle = title
    a.acontent = content
    a.aread = 0

    # a.apub_datetime=True
    a.save()
    return redirect(reverse('blog:index'))
#删除
def delete(request,id):
    # title = request.POST.get('title','')
    # content = request.POST.get('content','')
    b = Article.objects.get(pk=id)
    b.delete()
    return redirect(reverse('blog:index'))



