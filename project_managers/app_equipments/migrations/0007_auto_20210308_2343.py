# Generated by Django 3.1.7 on 2021-03-08 14:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app_equipments', '0006_auto_20210308_2322'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='rank',
            field=models.CharField(choices=[('', '직급 선택'), ('s3', 's3'), ('s4', 's4'), ('s5', 's5'), ('s6', 's6'), ('s7', 's7'), ('s8', 's8'), ('director', 'director'), ('freelancer', 'freelancer'), ('intern', 'intern'), ('contract', 'contract'), ('etc', 'etc')], default='', max_length=20),
        ),
    ]
