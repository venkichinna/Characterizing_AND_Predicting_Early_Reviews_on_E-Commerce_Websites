# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2018-11-28 05:20
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Prodcuts',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('product_name', models.CharField(choices=[('mobile', 'mobile'), ('laptop', 'laptop'), ('mobile accessories', 'mobile accessories'), ('watches', 'watches'), ('shoes', 'shoes')], max_length=200)),
                ('version_name', models.CharField(max_length=200)),
                ('vendor_name', models.CharField(max_length=200)),
                ('color', models.CharField(max_length=200)),
                ('price', models.FloatField(max_length=200)),
                ('featuers', models.CharField(max_length=200)),
                ('images', models.FileField(upload_to='')),
            ],
        ),
    ]
