from django.db import models

# Create your models here.
from django.db.models import DateField
import datetime


RANK_CHOICES = (
    ('', '직급 선택'),
    ('주임', '주임'),
    ('대리', '대리'),
    ('책임', '책임'),
    ('수석', '수석'),
    ('법인장님', '법인장님'),
    ('보관장소', '보관장소'),
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


CATEGORY_CHOICES = (
    ('', '범주 선택'),
    ('노트북', '노트북'),
    ('데스크톱', '데스크톱'),
    ('모니터', '모니터'),
    ('키보드', '키보드'),
    ('마우스', '마우스'),
    ('외장저장장치', '외장저장장치'),
    ('네트워크장비', '네트워크장비'),
    ('음향장비', '음향장비'),
    ('액세서리', '액세서리'),
    ('기타', '기타'),
    ('사무실가전', '사무실가전'),
)

SORT_CHOICES = (
    ('', '종류 선택'),
    ('노트북', (
        ('apple', 'apple'),
        ('asus', 'asus'),
        ('corsair', 'corsair'),
        ('dell', 'dell'),
        ('gram', 'gram'),
        ('hansung', 'hansung'),
        ('hp', 'hp'),
        ('intel', 'intel'),
        ('lenovo', 'lenovo'),
        ('msi', 'msi'),
        ('samsung', 'samsung'),
        ('ultra', 'ultra'),
    )),
    ('데스크톱', (
        ('조립식', '조립식'),
        ('apple', 'apple'),
        ('asus', 'asus'),
        ('corsair', 'corsair'),
        ('dell', 'dell'),
        ('hansung', 'hansung'),
        ('hp', 'hp'),
        ('intel', 'intel'),
        ('lenovo', 'lenovo'),
        ('lg', 'lg'),
        ('msi', 'msi'),
        ('samsung', 'samsung'),
    )),
    ('모니터', (
        ('lg', 'lg'),
        ('samsung', 'samsung'),
        ('viewsonic', 'viewsonic'),
        ('viewsync', 'viewsync'),
    )),
    ('키보드/마우스', (
        ('abko', 'abko'),
        ('gram노트북용', 'gram노트북용'),
        ('logitech', 'logitech'),
        ('micronics', 'micronics'),
        ('samsung노트북용', 'samsung노트북용'),
        ('ultra노트북용', 'ultra노트북용'),
    )),
    ('외장저장장치', (
        ('hdd', 'hdd'),
        ('ssd', 'ssd'),
    )),
    ('네트워크장비', (
        ('공유기', '공유기'),
        ('스위치허브', '스위치허브'),
    )),
    ('음향장비', (
        ('스피커', '스피커'),
        ('지향성마이크', '지향성마이크'),
    )),
    ('액세서리', (
        ('gram노트북가방', 'gram노트북가방'),
        ('samsung노트북가방', 'samsung노트북가방'),
    )),
    ('기타', (
        ('hdmi', 'hdmi'),
        ('hdmi허브', 'hdmi허브'),
        ('도킹스테이션', '도킹스테이션'),
        ('키오스크', '키오스크'),

    )),
    ('사무실가전', (
        ('복합기', '복합기'),
        ('냉장고', '냉장고'),
        ('공기청정기', '공기청정기'),
        ('세절기', '세절기'),
    )),
)

IS_ASSETS_CHOICES =(
    ('', '자산구분 선택'),
    ('자산', '자산'),
    ('자산 외', '자산 외'),
    ('렌탈', '렌탈'),
)


class Device(models.Model):
    device_id = models.AutoField(primary_key=True)
    purchase_date = DateField(default=datetime.date.today)
    category = models.CharField(max_length=20, default='', choices=CATEGORY_CHOICES)
    sort = models.CharField(max_length=20, default='', choices=SORT_CHOICES)
    amount = models.IntegerField(default=1)
    spec = models.TextField(blank=True, default='')
    is_assets = models.CharField(blank=True, max_length=20, default='', choices=IS_ASSETS_CHOICES)
    etc = models.TextField(blank=True, default='')

    def __str__(self):
        return str(self.category) + " | " + str(self.sort) + " | " + str(self.purchase_date) + " | " + str(self.spec)

    class Meta:
        ordering = ('category', 'sort', 'purchase_date')


class Usage(models.Model):
    usage_id = models.AutoField(primary_key=True)
    user_id = models.ForeignKey("User", related_name="user", on_delete=models.CASCADE, db_column="user_id")
    device_id = models.ForeignKey("Device", related_name="us_device", on_delete=models.CASCADE, db_column="device_id")
    updated_at = models.DateTimeField(auto_now=True) # Update continuosly

    def __str__(self):
        return str(self.user_id) + " | " + str(self.device_id)

    class Meta:
        ordering = ('user_id', 'device_id',)
