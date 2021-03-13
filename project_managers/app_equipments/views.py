from django.shortcuts import redirect, render, get_object_or_404
from .models import Usage, User, Device
from .forms import UsageEditForm


# home.html 페이지를 부르는 index 함수
def home(request):
    return render(request, 'app_equipments/base/home.html')


def check_spec(request):
    device_list = Usage.objects.all()
    return render(request, 'app_equipments/menu/check_spec.html', {'device_list': device_list})


def check_total(request):
    return render(request, 'app_equipments/menu/check_total.html')


def check_seat(request, seat):
    # get seat list
    seat_all = User.objects.all()
    #print('1 :', seat_all)
    seat_list = []
    for i in seat_all:
        seat_list.append(i.seat)
    seat_list.sort()
    #print('2 :', seat_list)

    # get user info
    user = User.objects.get(seat=seat)
    #print('3 :', user)

    # get usage info
    usage = Usage.objects.filter(user_id=user.user_id).order_by('device_id')
    #print('4 :', usage)

    # make usage list
    device_usage_info = []
    for i in usage:
        device = str(i.device_id).split('|')
        #print('5 :', device)
        #print('6 :', device[0])
        #print('7 :', device[1])
        device_spec = Device.objects.filter(type=device[0].strip(), brand=device[1].strip())
        #print('8 :', device_usage)
        #print('9 :', device_usage[0].spec)
        device_info = {
            'device_id': device_spec[0].device_id,
            'type': device[0],
            'brand': device[1],
            'spec': device_spec[0].spec
        }
        device_usage_info.append(device_info)
        #print('10 :', device_usage_info)

        # new usage
        if request.method == "POST":
            form = UsageEditForm(request.POST)
            if form.is_valid():
                new_usage = form.save(commit=False)
                new_usage.user_id = user
                new_usage.save()

                seat = user.seat
                get_page = '/check_seat/' + str(seat)

                return redirect(get_page)
        else:
            form = UsageEditForm()

    return render(request, 'app_equipments/menu/check_seat.html', {'seat_list': seat_list, 'user': user, 'device_usage_info': device_usage_info, 'form': form})


def check_seat_delete(request, user_id, device_id):
    usage = Usage.objects.filter(user_id=user_id, device_id=device_id)
    #print(usage)
    usage[0].delete()

    user = User.objects.get(user_id=user_id)
    seat = user.seat
    get_page = '/check_seat/' + str(seat)

    return redirect(get_page)


def notification(request):
    return render(request, 'app_equipments/menu/notification.html')


def mailing(request):
    return render(request, 'app_equipments/menu/mailing.html')


def submenu(request):
    return render(request, 'app_equipments/menu/submenu/portfolio-details.html')
