# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='College',
            fields=[
                ('id', models.AutoField(auto_created=True, serialize=False, primary_key=True, verbose_name='ID')),
                ('cname', models.CharField(max_length=200)),
                ('cmajor', models.CharField(max_length=300)),
                ('cnumber', models.IntegerField()),
                ('isDelete', models.BooleanField(default=False)),
            ],
            options={
                'ordering': ['id'],
                'db_table': '学院表',
            },
        ),
        migrations.CreateModel(
            name='Student',
            fields=[
                ('id', models.AutoField(auto_created=True, serialize=False, primary_key=True, verbose_name='ID')),
                ('sname', models.CharField(max_length=30)),
                ('ssex', models.BooleanField(default=0)),
                ('snumber', models.IntegerField()),
                ('sdate', models.DateTimeField()),
                ('isDelete', models.BooleanField(default=False)),
                ('sfor', models.ForeignKey(to='demolianxi.College')),
            ],
            options={
                'ordering': ['-id'],
                'db_table': '学生表',
            },
        ),
    ]
