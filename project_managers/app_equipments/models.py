from django.db import models

# Create your models here.
from django.db.models import DateField
import datetime


RANK_CHOICES = (
    ('', '직급 선택'),
    ('주임', '주임'),
    ('대리', '대리'),
    ('책임', '책임'),
    ('법인장님', '법인장님'),
)


class User(models.Model):
    user_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=20, default='')  # CharField should be indicated with max_length
    rank = models.CharField(max_length=20, default='', choices=RANK_CHOICES)
    seat = models.IntegerField(default=1, unique=True)

    def __str__(self):
        return str(self.seat) + " | " + str(self.name)

    class Meta:
        ordering = ('seat', 'name',)


TYPE_CHOICES = (
    ('', '장비타입 선택'),
    ('notebook', 'notebook'),
    ('desktop', 'desktop'),
    ('monitor', 'monitor'),
    ('keyboard', 'keyboard'),
    ('mouse', 'mouse'),
    ('ex_storage', 'ex_storage'),
    ('network_eq', 'network_eq'),
    ('sound_eq', 'sound_eq'),
    ('accessory', 'accessory'),
    ('etc', 'etc'),
)

BRAND_CHOICES = (
    ('', '브랜드 선택'),
    ('notebook', (
        ('samsung_itech', 'samsung_itech'),
        ('gram512', 'gram512'),
        ('gram256', 'gram256'),
        ('ultra', 'ultra'),
        ('asus', 'asus'),
        ('hansung', 'hansung'),
    )),
    ('desktop', (
        ('deep_learning', 'deep_learning'),
        ('offer_interface', 'offer_interface'),
        ('run_client_app', 'run_client_app'),
    )),
    ('monitor', (
        ('samsung_itech', 'samsung_itech'),
        ('samsung', 'samsung'),
        ('lg', 'lg'),
        ('viewsync', 'viewsync'),
    )),
    ('keyboard/mouse', (
        ('samsung_itech', 'samsung_itech'),
        ('gram', 'gram'),
        ('ultra', 'ultra'),
        ('logitech', 'logitech'),
        ('micronics', 'micronics'),
    )),
    ('etc', 'etc'),
)


class Device(models.Model):
    device_id = models.AutoField(primary_key=True)
    type = models.CharField(max_length=20, default='', choices=TYPE_CHOICES)
    brand = models.CharField(max_length=20, default='', choices=BRAND_CHOICES)
    purchase_date = DateField(blank=True, default=datetime.date.today)
    spec = models.TextField(blank=True, default='')

    def __str__(self):
        return str(self.type) + " | " + str(self.brand) + " | " + str(self.spec)

    class Meta:
        ordering = ('type', 'brand',)



class Amount(models.Model):
    amount_id = models.AutoField(primary_key=True)
    device_id = models.ForeignKey("Device", related_name="am_device", on_delete=models.CASCADE, db_column="device_id")
    amount = models.IntegerField(default=1)
    updated_at = models.DateTimeField(auto_now=True) # Update continuosly

    def __str__(self):
        return str(self.device_id) + " | " + str(self.amount)

    class Meta:
        ordering = ('device_id', 'amount',)


class Usage(models.Model):
    usage_id = models.AutoField(primary_key=True)
    user_id = models.ForeignKey("User", related_name="user", on_delete=models.CASCADE, db_column="user_id")
    device_id = models.ForeignKey("Device", related_name="us_device", on_delete=models.CASCADE, db_column="device_id")
    updated_at = models.DateTimeField(auto_now=True) # Update continuosly

    def __str__(self):
        return str(self.user_id) + " | " + str(self.device_id)

    class Meta:
        ordering = ('user_id', 'device_id',)
