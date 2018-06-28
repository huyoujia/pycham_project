from django.contrib import admin

# Register your models here.

from booktest.models import BookInfo
from booktest.models import HeroInfo

#自定义管理界面

# class HeroInfoAdmin(admin.ModelAdmin):
#     list_display = ['hname', 'gender','hbook']
#     search_fields = ['hname']
# class HeroInfoInline(admin.StackedInline):
#     model = HeroInfo
#     extra = 2
#
# class BookInfoAdmin(admin.ModelAdmin):
#     inlines = [HeroInfoInline]
# #列表页属性
#     #1.显示字段
#     list_display = ['pk','btitle','bpub_date']
#     #2.过滤字段 过滤框会出现在右侧
#     list_filter = ['btitle']
#     #3.分页
#     list_per_page = 1
#     #4.搜索字段 搜索框会出现在上侧
#     search_fields = ['btitle']
# #添加修改页属性
#     #1.属性的先后顺序
#     fields = ['bpub_date','btitle']
#     #2.属性分组
#     #fieldsets = [('基本字段',{'fields':['btitle']}),('更多字段',{'fields':['bpub_date']}),]
# admin.site.register(BookInfo, BookInfoAdmin)
# admin.site.register(HeroInfo, HeroInfoAdmin)