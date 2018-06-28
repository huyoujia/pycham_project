from django.db import models

# Create your models here.
class AreaInfo(models.Model):
    aid = models.IntegerField(primary_key=True)
    atitle = models.CharField(max_length=20)
    aPArea = models.ForeignKey('AreaInfo', null=True)

    class Meta():
        db_table = 'booktest_areas'