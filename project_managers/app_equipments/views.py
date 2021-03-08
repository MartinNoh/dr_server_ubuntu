from django.shortcuts import render
from .models import Usage


# home.html 페이지를 부르는 index 함수
def home(request):
    return render(request, 'app_equipments/base/home.html')


def check_spec(request):
    device_list = Usage.objects.all()
    return render(request, 'app_equipments/menu/check_spec.html', {'device_list':device_list})


def check_total(request):
    return render(request, 'app_equipments/menu/check_total.html')


def check_seat(request):
    return render(request, 'app_equipments/menu/check_seat.html')


def notification(request):
    return render(request, 'app_equipments/menu/notification.html')


def mailing(request):
    return render(request, 'app_equipments/menu/mailing.html')


def submenu(request):
    return render(request, 'app_equipments/menu/submenu/portfolio-details.html')
