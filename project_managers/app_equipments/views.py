from django.shortcuts import redirect, render, get_object_or_404
from .models import Usage, User, Device
from .forms import UsageEditForm, DeviceNewForm


# home.html 페이지를 부르는 index 함수
def home(request):
    return render(request, 'app_equipments/base/home.html')


def check_spec(request):
    device_list = Usage.objects.all()
    return render(request, 'app_equipments/menu/check_spec.html', {'device_list': device_list})


def check_total(request):
    info_list = []
    device_list = Device.objects.all()
    for i in device_list:
        usage_amount = Usage.objects.filter(device_id=i.device_id)

        info_dic = {
         'device_id': i.device_id,
         'type': i.type,
         'brand': i.brand,
         'spec': i.spec,
         'remains': i.amount - len(usage_amount),
         'amounts': len(usage_amount),
         'total': i.amount,
         'purchase_date': i.purchase_date,}
        #print(info_dic)

        info_list.append(info_dic)
        #print(info_list)

    return render(request, 'app_equipments/menu/check_total.html', {'info_list': info_list,})


def check_total_new(request):

    # new device
    if request.method == "POST":
        form = DeviceNewForm(request.POST)
        if form.is_valid():
            new_device = form.save()

        return redirect('check_total')
    else:
        form = DeviceNewForm()

    return render(request, 'app_equipments/menu/check_total_new.html', {'form': form, })


def check_total_update(request, device_id):
    device = Device.objects.get(device_id=device_id)
    if request.method == "POST":
        form = DeviceNewForm(request.POST)
        if form.is_valid():
            device.type = form.cleaned_data['type']
            device.brand = form.cleaned_data['brand']
            device.spec = form.cleaned_data['spec']
            device.amount = form.cleaned_data['amount']
            device.purchase_date = form.cleaned_data['purchase_date']
            device.save()

        return redirect('check_total')
    else:
        form = DeviceNewForm(instance=device)

    return render(request, 'app_equipments/menu/check_total_update.html', {'form': form, 'device_id': device_id,})


def check_total_delete(request, device_id):
    device = Device.objects.filter(device_id=device_id)
    device[0].delete()

    return redirect('/check_total/')


def check_seat(request, seat):
    # get seat list
    seat_all = User.objects.all()

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

    return render(request, 'app_equipments/menu/check_seat.html', {'seat_all': seat_all, 'user': user, 'device_usage_info': device_usage_info, 'form': form})


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
