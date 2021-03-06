# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-06-29 08:12
from __future__ import unicode_literals

import ckeditor.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('userapp', '0002_userinfo_content'),
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=50)),
                ('content', ckeditor.fields.RichTextField()),
            ],
        ),
        migrations.RemoveField(
            model_name='userinfo',
            name='content',
        ),
    ]
