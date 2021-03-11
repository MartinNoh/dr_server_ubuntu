from django.urls import path
from .views import home, check_spec, check_total, check_seat, notification, mailing, submenu

urlpatterns = [
    path('', home, name='home'),
    path('check_spec/', check_spec, name='check_spec'),
    path('check_total/', check_total, name='check_total'),
    path('check_seat/<int:seat>', check_seat, name='check_seat'),
    path('notification/', notification, name='notification'),
    path('mailing/', mailing, name='mailing'),
    path('submenu/', submenu, name='submenu'),
]