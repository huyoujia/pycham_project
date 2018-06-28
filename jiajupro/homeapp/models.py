from django.db import models
from datetime import datetime


# Create your models here.

# 轮播图
class Banner(models.Model):
    btitle = models.CharField(max_length=20, verbose_name='轮播图')
    bimage = models.ImageField(max_length=250, upload_to='static/images')

    class Meta:
        verbose_name = '轮播图'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.btitle


# 分类
class Category(models.Model):
    name = models.CharField(max_length=30, verbose_name='分类名称')
    cimage = models.ImageField(max_length=250, upload_to='static/images')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '分类'
        verbose_name_plural = verbose_name


# 家居
class Furnishing(models.Model):
    btitle = models.CharField(max_length=30, verbose_name='商品名称')
    Fimage = models.ImageField(max_length=300, upload_to='static/images')
    bgimage = models.ImageField(max_length=300, upload_to='static/images')
    category = models.ForeignKey(Category, verbose_name='分类', default=None)

    def __str__(self):
        return self.btitle

    class Meta:
        verbose_name = '家居'
        verbose_name_plural = verbose_name


# 动态分类
class NewsCategory(models.Model):
    nctitle = models.CharField(max_length=50, verbose_name='分类标题')
    ncimage = models.ImageField(max_length=300, verbose_name='分类图片', upload_to='static/images')
    nccontent = models.CharField(max_length=500, verbose_name='内容')

    def __str__(self):
        return self.nctitle

    class Meta:
        verbose_name = '动态分类'
        verbose_name_plural = verbose_name


# 文章
class News(models.Model):
    ntitle = models.CharField(max_length=50, verbose_name='文章标题')
    nimage = models.ImageField(max_length=300, verbose_name='文章封面图片', upload_to='static/images')
    pub_date = models.DateTimeField(verbose_name='发布时间', default=datetime.now)
    views = models.IntegerField(verbose_name='浏览量')
    ncategory = models.ForeignKey(NewsCategory, verbose_name='分类', default=None)
    newcontent = models.CharField(max_length=2000, verbose_name='文章内容')

    def __str__(self):
        return self.ntitle

    class Meta:
        verbose_name = '文章'
        verbose_name_plural = verbose_name
