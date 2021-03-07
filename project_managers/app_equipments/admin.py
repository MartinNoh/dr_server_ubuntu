from django.contrib import admin
from .models import User, Notebook, Desktop, Monitor, Keyboard, Mouse, ExternalStroage, NetworkEquipment, SoundEquipment, Accessory, Etc, Equipment

# Register your models here.
admin.site.register(User)
admin.site.register(Notebook)
admin.site.register(Desktop)
admin.site.register(Monitor)
admin.site.register(Keyboard)
admin.site.register(Mouse)
admin.site.register(ExternalStroage)
admin.site.register(NetworkEquipment)
admin.site.register(SoundEquipment)
admin.site.register(Accessory)
admin.site.register(Etc)
admin.site.register(Equipment)
