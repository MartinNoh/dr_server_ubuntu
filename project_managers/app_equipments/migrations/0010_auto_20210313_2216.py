# Generated by Django 3.1.7 on 2021-03-13 13:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app_equipments', '0009_auto_20210313_2211'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='rank',
            field=models.CharField(choices=[('', '직급 선택'), ('주임', '주임'), ('대리', '대리'), ('책임', '책임'), ('법인장님', '법인장님')], default='', max_length=20),
        ),
    ]
