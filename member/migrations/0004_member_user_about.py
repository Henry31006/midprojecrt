# Generated by Django 2.0.1 on 2018-01-23 06:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('member', '0003_auto_20180123_1404'),
    ]

    operations = [
        migrations.AddField(
            model_name='member',
            name='user_about',
            field=models.CharField(blank=True, max_length=500),
        ),
    ]