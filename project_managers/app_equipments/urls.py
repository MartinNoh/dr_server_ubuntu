from django.urls import path
from .views import home, add_device, check_list

urlpatterns = [
    path('', home, name='home'),
    path('check_list/', check_list, name='check_list'),
    path('add_device/', add_device, name='add_device'),
]