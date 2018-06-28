from django.db import models

# Create your models here.
#
# class BookInfo(models.Model):
#     btitle = models.CharField(max_length=30)
#     bpub_date = models.DateTimeField()
#
#     def __str__(self):
#         return '%d' % self.pk
#
# class HeroInfo(models.Model):
#     hname = models.CharField(max_length=30)
#     hgender = models.BooleanField()
#     hbook = models.ForeignKey('BookInfo')
#     def gender(self):
#         if self.hgender:
#             return '男'
#         else:
#             return '女'
#     gender.short_description = '性别'
#
#     def __str__(self):
#         return '%s' % self.hname


class BookInfo(models.Model):
    btitle=models.CharField(max_length=20)
    bpub_date=models.DateTimeField(db_column='pub_date')
    bread=models.IntegerField(default=0)
    bcommet=models.IntegerField(null=False)
    isDelete=models.BooleanField(default=False)

class HeroInfo(models.Model):
    hname=models.CharField(max_length=10)
    hgender=models.BooleanField(default=True)
    hcontent=models.CharField(max_length=1000)
    isDelete=models.BooleanField(default=False)
    book=models.ForeignKey(BookInfo)
