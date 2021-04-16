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

        get_device_list = []
        device_list = Device.objects.all()
        for i in device_list:
            usage_amount = Usage.objects.filter(device_id=i.device_id)
            if (i.amount - len(usage_amount)) > 0:
                get_device_list.append(i.device_id)
        #print("number", get_device_list)

        self.fields['device_id'].queryset = Device.objects.filter(device_id__in=get_device_list)


class DeviceNewForm(forms.ModelForm):
    class Meta:
        model = Device
        fields = ['category', 'sort', 'spec', 'amount', 'purchase_date', 'is_assets', 'etc']

        labels = {
            'category': '범주',
            'sort': '종류',
            'spec': '스펙',
            'amount': '총량',
            'purchase_date': '구매일자',
            'is_assets': '자산여부',
            'etc': '기타',
        }

    def __init__(self, *args, **kwargs):
        super(DeviceNewForm, self).__init__(*args, **kwargs)
        self.fields['spec'].widget.attrs['placeholder'] = "PC 예시)  CPU : AMD Ryzen 7 4800H with Radeon Graphics 2.90GHz / RAM : 32GB / HDD : 1TB / GPU : GTX1660"