from django  import forms

from .models import Equipment

class EquipmentForm(forms.ModelForm):
    class Meta:
        model = Equipment
        fields = ['seat', 'name', 'rank', 'mainbody', 'monitor', 'keyboard', 'mouse', 'smalldevice', 'bigdevice', 'accessory']
        widgets = {
            'seat': forms.TextInput(attrs={'class': 'form-control', 'placeholder': '자리 번호를 입력해주세요.'}),
        }
        labels = {
            'seat' : '자리 번호',
        }

    def __init__(self, *args, **kwargs):
        super(EquipmentForm, self).__init__(*args, **kwargs)
        self.fields['name'].widget.  attrs['maxlength'] = 10