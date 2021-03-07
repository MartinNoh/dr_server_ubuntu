from django.db import models

# Create your models here.
from django.db.models import DateField
import datetime


RANK_CHOICES = (
    ('', '직급 선택'),
    ('s3', 's3'),
    ('s4', 's4'),
    ('s5', 's5'),
    ('s6', 's6'),
    ('s7', 's7'),
    ('s8', 's8'),
    ('freelancer', 'freelancer'),
    ('intern', 'intern'),
    ('contract', 'contract'),
)
class User(models.Model):
    name = models.CharField(max_length=20, default='')  # CharField should be indicated with max_length
    rank = models.CharField(max_length=20, default='', choices=RANK_CHOICES)
    seat = models.IntegerField(default=1)

    def __str__(self):
        return self.name


NOTEBOOK_BRAND_CHOICES = (
    ('', '브랜드 선택'),
    ('gram', 'gram'),
    ('ultra', 'ultra'),
    ('samsung_itech', 'samsung_itech'),
    ('asus', 'asus'),
    ('hansung', 'hansung'),
)
class Notebook(models.Model):
    brand = models.CharField(max_length=20, default='', choices=NOTEBOOK_BRAND_CHOICES)
    cpu = models.CharField(max_length=50, blank=True)
    ram = models.CharField(max_length=50, blank=True)
    drive = models.CharField(max_length=50, blank=True)
    gpu = models.CharField(max_length=50, blank=True)
    purchase_date = DateField(blank=True, default=datetime.date.today)

    def __str__(self):
        return self.brand


DESKTOP_PURPOSE_CHOICES = (
    ('', '용도 선택'),
    ('deep_learning', 'deep_learning'),
    ('offer_interface', 'offer_interface'),
    ('run_client_app', 'run_client_app'),
)
class Desktop(models.Model):
    purpose = models.CharField(max_length=20, default='', choices=DESKTOP_PURPOSE_CHOICES)
    cpu = models.CharField(max_length=50, blank=True)
    ram = models.CharField(max_length=50, blank=True)
    drive = models.CharField(max_length=50, blank=True)
    gpu = models.CharField(max_length=50, blank=True)
    purchase_date = DateField(blank=True, default=datetime.date.today)

    def __str__(self):
        return self.purpose


MONITOR_BRAND_CHOICES = (
    ('', '브랜드 선택'),
    ('viewsync', 'viewsync'),
    ('lg', 'lg'),
    ('samsung_itech', 'samsung_itech'),
    ('samsung', 'samsung'),
)
class Monitor(models.Model):
    brand = models.CharField(max_length=20, default='', choices=MONITOR_BRAND_CHOICES)
    inch = models.IntegerField(blank=True, default=32)
    purchase_date = DateField(blank=True, default=datetime.date.today)

    def __str__(self):
        return self.brand


KEYBOARD_BRAND_CHOICES = (
    ('', '브랜드 선택'),
    ('logitech_old', 'logitech_old'),
    ('logitech_new', 'logitech_new'),
    ('mechanical', 'mechanical'),
)
class Keyboard(models.Model):
    brand = models.CharField(max_length=20, default='', choices=KEYBOARD_BRAND_CHOICES)
    purchase_date = DateField(blank=True, default=datetime.date.today)

    def __str__(self):
        return self.brand


MOUSE_BRAND_CHOICES = (
    ('', '브랜드 선택'),
    ('logitech_old', 'logitech_old'),
    ('logitech_new', 'logitech_new'),
    ('gram', 'gram'),
    ('ultra', 'ultra'),
    ('samsung_itech', 'samsung_itech'),
    ('micronics', 'micronics'),
)
class Mouse(models.Model):
    brand = models.CharField(max_length=20, default='', choices=MOUSE_BRAND_CHOICES)
    purchase_date = DateField(blank=True, default=datetime.date.today)

    def __str__(self):
        return self.brand


EXTERNALSTORAGE_TYPE_CHOICES = (
    ('', '종류 선택'),
    ('nas', 'nas'),
    ('docking_station', 'docking_station'),
    ('external_hdd', 'external_hdd'),
    ('external_ssd', 'external_ssd'),

)
class ExternalStroage(models.Model):
    type = models.CharField(max_length=20, default='', choices=EXTERNALSTORAGE_TYPE_CHOICES)
    brand = models.CharField(max_length=20, blank=True, default='')
    purchase_date = DateField(blank=True, default=datetime.date.today)

    def __str__(self):
        return self.type


NETWORKEQUIPMENT_TYPE_CHOICES = (
    ('', '종류 선택'),
    ('vpn_router', 'vpn_router'),
    ('hub', 'hub'),
)
class NetworkEquipment(models.Model):
    type = models.CharField(max_length=20, default='', choices=NETWORKEQUIPMENT_TYPE_CHOICES)
    brand = models.CharField(max_length=20, blank=True, default='')
    purchase_date = DateField(blank=True, default=datetime.date.today)

    def __str__(self):
        return self.type


SOUNDEQUIPMENT_TYPE_CHOICES = (
    ('', '종류 선택'),
    ('microphone', 'microphone'),
    ('speaker', 'speaker'),
)
class SoundEquipment(models.Model):
    type = models.CharField(max_length=20, default='', choices=SOUNDEQUIPMENT_TYPE_CHOICES)
    brand = models.CharField(max_length=20, blank=True, default='')
    purchase_date = DateField(blank=True, default=datetime.date.today)

    def __str__(self):
        return self.type

ACCESSORY_TYPE_CHOICES = (
    ('', '종류 선택'),
    ('notebook_bag', 'notebook_bag'),
    ('hdmi', 'hdmi'),
)
class Accessory(models.Model):
    type = models.CharField(max_length=20, default='', choices=ACCESSORY_TYPE_CHOICES)
    brand = models.CharField(max_length=20, blank=True, default='')
    purchase_date = DateField(blank=True, default=datetime.date.today)

    def __str__(self):
        return self.type


ETC_TYPE_CHOICES = (
    ('', '종류 선택'),
    ('kiosk', 'kiosk'),
)
class Etc(models.Model):
    type = models.CharField(max_length=20, default='', choices=ETC_TYPE_CHOICES)
    brand = models.CharField(max_length=20, blank=True, default='')
    purchase_date = DateField(blank=True, default=datetime.date.today)

    def __str__(self):
        return self.type


class Equipment(models.Model):

    MAINBODY_CHOICES = (
        ('', '노트북/데스크탑 선택'),
        ('노트북', (
            ('그램', '그램'),
            ('울트라', '울트라'),
            ('삼성', '삼성'),
            ('아수스', '아수스'),
            ('한성', '한성'),
        )),
        ('데스크톱', (
            ('서버PC', '서버PC'),
            ('학습PC', '학습PC'),
            ('운영PC', '운영PC'),
        )),
    )

    MONITOR_CHOICES = (
        ('', '모니터 선택'),
        ('ViewSync', 'ViewSync'),
        ('LG', 'LG'),
        ('Samsung', 'Samsung'),
    )

    KEYBOARD_CHOICES = (
        ('', '키보드 선택'),
        ('Logitech(신형)', 'Logitech(신형)'),
        ('Logitech(구형)', 'Logitech(구형)'),
        ('기계식 키보드', '기계식 키보드'),
    )

    MOUSE_CHOICES = (
        ('', '마우스 선택'),
        ('Logitech(신형)', 'Logitech(신형)'),
        ('Logitech(구형)', 'Logitech(구형)'),
        ('LG gram 마우스', 'LG gram 마우스'),
        ('삼성 노트북 마우스', '삼성 노트북 마우스'),
        ('Micronics', 'Micronics'),
    )

    SMALLDEVICE_CHOICES = (
        ('', '소형 장비 선택'),
        ('외장HDD', '외장HDD'),
        ('외장SSD', '외장SSD'),
        ('NAS', 'NAS'),
        ('도킹스테이션', '도킹스테이션'),
        ('VPN 공유기', 'VPN 공유기'),
        ('허브', '허브'),
    )

    BIGDEVICE_CHOICES = (
        ('', '대형 장비 선택'),
        ('키오스크', '키오스크'),
    )

    ACCESSORY_CHOICES = (
        ('', '액세서리 선택'),
        ('삼성 노트북 가방', '삼성 노트북 가방'),
        ('그램 노트북 가방', '그램 노트북 가방'),
        ('울트라 노트북 가방', '울트라 노트북 가방'),
    )

    seat = models.IntegerField(default=1)
    name = models.CharField(max_length=10, default='No Name') # CharField should be indicated with max_length
    rank = models.CharField(max_length=20, default='Not Ranked', choices=RANK_CHOICES)
    mainbody = models.CharField(max_length=20, blank=True, choices=MAINBODY_CHOICES)
    monitor = models.CharField(max_length=20, blank=True, choices=MONITOR_CHOICES)
    keyboard = models.CharField(max_length=20, blank=True, choices=KEYBOARD_CHOICES)
    mouse = models.CharField(max_length=20, blank=True, choices=MOUSE_CHOICES)
    smalldevice = models.CharField(max_length=20, blank=True, choices=SMALLDEVICE_CHOICES)
    bigdevice = models.CharField(max_length=20, blank=True, choices=BIGDEVICE_CHOICES)
    accessory = models.CharField(max_length=20, blank=True, choices=ACCESSORY_CHOICES)
    created_at = models.DateField(auto_now_add=True) # Cannot be editable
    updated_at = models.DateTimeField(auto_now=True) # Update continuosly

    def __str__(self):
        return self.name