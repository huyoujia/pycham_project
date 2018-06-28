from django.contrib import admin
from .models import Banner, Category,Furnishing,NewsCategory,News

# Register your models here.

admin.site.register(Banner)
admin.site.register(Category)
admin.site.register(Furnishing)
admin.site.register(NewsCategory)
admin.site.register(News)

