from django.db import models


# Create your models here.
# 轮播图
class Banner(models.Model):
    btitle = models.CharField(max_length=50, verbose_name='轮播图')
    bimage = models.ImageField(max_length=250, upload_to='static/images')

    class Meta:
        verbose_name = '轮播图'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.btitle
        # 商品分类


class TypeInfo(models.Model):
    ttitle = models.CharField(max_length=20)
    isDelete = models.BooleanField(default=False)

    def __str__(self):
        return self.ttitle


# 商品
class GoodsInfo(models.Model):
    gtitle = models.CharField(max_length=20, verbose_name='商品名称')
    #图书位置
    gpic = models.ImageField(verbose_name='图片位置',upload_to='static/images/goods')
    #商品价格
    gprice = models.DecimalField(verbose_name='价格',max_digits=5,decimal_places=2)
