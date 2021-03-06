# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-07-01 12:32
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('homeapp', '0005_auto_20180627_1624'),
    ]

    operations = [
        migrations.CreateModel(
            name='AboutAs',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=50, verbose_name='关于我们标题')),
                ('image', models.ImageField(max_length=200, upload_to='static/images', verbose_name='团队图片')),
                ('bgimage', models.ImageField(max_length=200, upload_to='static/images')),
                ('content', models.CharField(max_length=3000, verbose_name='关于我们内容')),
            ],
        ),
        migrations.CreateModel(
            name='Demand',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=30, verbose_name='客户姓名')),
                ('address', models.CharField(max_length=50, verbose_name='客户地址')),
                ('number', models.IntegerField(max_length=50, verbose_name='客户电话')),
                ('email', models.EmailField(max_length=50, verbose_name='客户邮箱')),
                ('describe', models.CharField(max_length=1000, verbose_name='采购意向')),
                ('auth_code', models.IntegerField(max_length=10, verbose_name='验证码')),
            ],
        ),
        migrations.AlterModelOptions(
            name='news',
            options={'verbose_name': '文章', 'verbose_name_plural': '文章'},
        ),
        migrations.AlterField(
            model_name='news',
            name='newcontent',
            field=models.CharField(max_length=2000, verbose_name='文章内容'),
        ),
        migrations.AlterField(
            model_name='news',
            name='nimage',
            field=models.ImageField(max_length=300, upload_to='static/images', verbose_name='文章封面图片'),
        ),
        migrations.AlterField(
            model_name='news',
            name='ntitle',
            field=models.CharField(max_length=50, verbose_name='文章标题'),
        ),
    ]
