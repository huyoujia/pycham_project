from django.db import models

# Create your models here.
class CollegeManager(models.Manager):
    def get_queryset(self):
        #过滤
        return super(CollegeManager, self).get_queryset()
    #添加数据第二种方法
    def AddCoolegeInfo(self,cname,cmajor,cnumber,):
        c = College()
        c.cname = cname
        c.cmajor = cmajor
        c.cnumber = cnumber
        c.save()
        return c

class College(models.Model):
    cname = models.CharField(max_length=200)
    cmajor = models.CharField(max_length=300)
    cnumber = models.IntegerField()
    isDelete = models.BooleanField(default=0)

    #添加数据的第三种方法(不常用 )
    # @classmethod
    # pass

    #自定义的管理器
    c1 = models.Manager()
    #第二种方法
    c2 = CollegeManager()
    class Meta():
        #定义名称
        db_table = '学院表'
        #排序
        #ordering = ['id']

    def __str__(self):
        return '名称 %s id %d'% (self.cname, self.pk)


class Student(models.Model):
    sname = models.CharField(max_length=30)
    ssex = models.BooleanField(default=0)
    snumber = models.IntegerField()
    sdate = models.DateTimeField()
    sfor = models.ForeignKey('College')
    isDelete = models.BooleanField(default=0)

    #自定义的管理器
    s1 = models.Manager()

    class Meta():
        db_table = '学生表'
        #ordering = ['-id']



    def __str__(self):
        return '%d' % self.pk
