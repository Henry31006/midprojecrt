# Generated by Django 2.0.1 on 2018-01-23 06:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('member', '0002_auto_20180121_1752'),
    ]

    operations = [
        migrations.RenameField(
            model_name='member',
            old_name='userbirth',
            new_name='user_birth',
        ),
        migrations.RenameField(
            model_name='member',
            old_name='useremail',
            new_name='user_email',
        ),
        migrations.RenameField(
            model_name='member',
            old_name='username',
            new_name='user_name',
        ),
        migrations.RenameField(
            model_name='member',
            old_name='nationality',
            new_name='user_nationality',
        ),
        migrations.RenameField(
            model_name='member',
            old_name='password',
            new_name='user_password',
        ),
        migrations.AddField(
            model_name='member',
            name='user_image',
            field=models.CharField(blank=True, max_length=20),
        ),
    ]