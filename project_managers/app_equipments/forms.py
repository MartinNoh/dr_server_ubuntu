from django import forms
from .models import Usage

class UsageEditForm(forms.ModelForm):
    class Meta:
        model = Usage
        fields = ['device_id']

        labels = {
            'device_id': '장비 추가',
        }

    def __init__(self, *args, **kwargs):
        super(UsageEditForm, self).__init__(*args, **kwargs)