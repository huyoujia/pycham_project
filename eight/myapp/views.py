from django.shortcuts import render
from django.http import HttpResponse,JsonResponse
from django.conf import settings
from .models import AreaInfo
import os
# Create your views here.
def myException(request):
    #x= 100/0
    int('ssffgf')
    return HttpResponse('早上好')

#上传文件
def upload(request):

    return render(request,'myapp/upload.html')
#接收文件
def uploadfiles(request):
    dict = request.FILES #字典
    pic = dict.get('fkey')
    picName = os.path.join(settings.MEDIA_ROOT,pic.name)

    # return render(request, 'myapp/upload.html')
    return HttpResponse(picName)

#保存文件
def uploadHandle(request):
    pic1 = request.FILES.get('fkey')
    #构建文件
    picName = os.path.join(settings.MEDIA_ROOT,pic1.name)

    #文件操作
    with open(picName,'wb') as pic:
        #从网络流里读取图片 读一点写一点
        for c in pic1.chunks():
            pic.write(c)

    return HttpResponse(picName)

#ajax
 #用于展示页面
def index(request):
    return render(request,'myapp/index.html')
 #返回省级数据
def getArea1(requset):
    print('-----------------------------------------------------')
    list = AreaInfo.objects.filter(aPArea__isnull=True)
    print(list)
    list2 = []
    for a in list:
        print('-----------------------------------------------------')
        print(a.aid)
        list2.append([a.aid,a.atitle])
    print('list2', list2)
    return JsonResponse({'data':list2})


 #用于根据省、市编号返回市、区信息，格式都为字典对象
def getArea2(request):
    pass