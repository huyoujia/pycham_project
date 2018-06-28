# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='AreaInfo',
            fields=[
                ('aid', models.IntegerField(serialize=False, primary_key=True)),
                ('atitle', models.CharField(max_length=20)),
                ('aPArea', models.ForeignKey(null=True, to='myapp.AreaInfo')),
            ],
        ),
    ]
