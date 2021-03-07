from django.shortcuts import render, redirect
from .forms import EquipmentForm
from .models import Equipment


# home.html 페이지를 부르는 index 함수
def home(request):
    return render(request, 'app_equipments/base/home.html')

def check_list(request):
    device_list = Equipment.objects.all()
    return render(request, 'app_equipments/menu/check_list.html', {'device_list':device_list})

def add_device(request):
    if request.method == "POST":
        form = EquipmentForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('get_list')
    else:
        form = EquipmentForm()
    return render(request, 'app_equipments/menu/add_device.html', {'form':form})