from django.db import models

# Create your models here.

class Equipment(models.Model):

    RANK_CHOICES = (
        ('','직급을 선택해주세요.'),
        ('S3', 'S3'),
        ('S4', 'S4'),
        ('S5', 'S5'),
        ('S6', 'S6'),
        ('S7', 'S7'),
        ('S8', 'S8'),
        ('Freelancer', 'Freelancer'),
        ('Intern', 'Intern'),
        ('Contract', 'Contract'),
    )

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