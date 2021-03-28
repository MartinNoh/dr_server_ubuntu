from django.urls import path
from .views import home, check_total, check_total_new, check_total_update, check_total_delete, download_csv, check_seat, check_seat_delete, notification

urlpatterns = [
    path('', home, name='home'),
    path('check_total/', check_total, name='check_total'),
    path('check_total_new/', check_total_new, name='check_total_new'),
    path('check_total_update/<int:device_id>', check_total_update, name='check_total_update'),
    path('check_total_delete/<int:device_id>', check_total_delete, name='check_total_delete'),
    path('download_csv/', download_csv, name='download_csv'),
    path('check_seat/<int:seat>', check_seat, name='check_seat'),
    path('check_seat_delete/<int:user_id>/<int:device_id>', check_seat_delete, name='check_seat_delete'),
    path('notification/', notification, name='notification'),
]