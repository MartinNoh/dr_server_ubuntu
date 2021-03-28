from django import forms
from .models import Device, Usage

class UsageEditForm(forms.ModelForm):
    class Meta:
        model = Usage
        fields = ['device_id',]

        labels = {
            'device_id': '장비 추가',
        }

    def __init__(self, *args, **kwargs):
        super(UsageEditForm, self).__init__(*args, **kwargs)

class DeviceNewForm(forms.ModelForm):
    class Meta:
        model = Device
        fields = ['category', 'brand', 'spec', 'amount', 'purchase_date',]

        labels = {
            'category': '구분',
            'brand': '브랜드',
            'spec': '스펙',
            'amount': '총량',
            'purchase_date': '구매일자',
        }

    def __init__(self, *args, **kwargs):
        super(DeviceNewForm, self).__init__(*args, **kwargs)
        self.fields['spec'].widget.attrs['placeholder'] = "PC 예시)  CPU : AMD Ryzen 7 4800H with Radeon Graphics 2.90GHz / RAM : 32GB / HDD : 1TB / GPU : GTX1660"