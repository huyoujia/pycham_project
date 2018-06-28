# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Article',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, primary_key=True, auto_created=True)),
                ('atitle', models.CharField(max_length=100)),
                ('acontent', models.TextField()),
                ('apub_datetime', models.DateTimeField(auto_now=True)),
                ('aread', models.IntegerField()),
                ('isDelete', models.BooleanField(default=False)),
            ],
        ),
    ]
