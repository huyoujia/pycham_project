# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('jishiapp', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='denglu',
            fields=[
                ('id', models.AutoField(primary_key=True, verbose_name='ID', auto_created=True, serialize=False)),
                ('name', models.CharField(max_length=200)),
                ('pwd', models.CharField(max_length=200)),
            ],
        ),
    ]
