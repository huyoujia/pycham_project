from django.shortcuts import render
from .models import *
from django.db.models import *
#若存时间 导入datetime包
#from datetime import datetime
# Create your views here.
def show(request):
    #list = College.c2.all()
    #加角标进行限制
    #list = College.c2.all()[0:2]
    #添加数据第一种方法
    # c = College()
    # c.cname = '软件工程'
    # c.cmajor = '大数据'
    # c.cnumber = 40
    # c.save()
    #调用添加数据的函数
    #College.c2.AddCoolegeInfo('软工2','vr',10)
    #单个查询 可能会出异常 最好加 try except
    #College.c2.get(pk=1)
    #删除 先查出对象再删除 需用自带的管理器
    #College.c2.get(pk=4).delete()
    #改
    # c = College.c2.get(id=1)
    # c.cname = 'ssfg'
    # c.save()
    #排序倒序
    #college = College.c1.order_by('-pk')
    #所有的信息
    #college = College.c1.values()
    #college = College.c1.filter(pk__lte=3,cnumber__lt=50)
    #返回满足条件的对象
    #college = College.c1.get(cnumber=50)
    #college = College.c1.count()
    #college = College.c1.first()
    #查询事件是否有数据
    #college = College.c1.exists()
    #查看含有..的在哪个学院里
    #college = College.c1.filter(student__sname__contains='胡')
    #查看..学院是学生里的第几个id
    #college = Student.s1.filter(sfor__cmajor__contains='h4,h5')
    #聚合函数 返回的是一个字典
    #college = College.c1.all().aggregate(Max('id')) #输出{'id__max': 3}

    #F对象 对字段进行比较
    #college = College.c1.filter(cnumber__gt=F('id'))

    #Q对象  需要进行or查询 使用Q对象 ~Q表示取返
    college = College.c1.filter(Q(pk__lt = 3)|Q(cnumber__lt=30))



    #return render(request,'demolianxi/show.html',{'list':list})
    return render(request,'demolianxi/show.html',{'list':college})