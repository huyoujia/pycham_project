from django.shortcuts import render,redirect,reverse
from .models import Banner, Category, Furnishing, NewsCategory, News,AboutAs,DingZhi,Demand
from django.views.generic.base import View
from django.db.models import Q
from django.shortcuts import render_to_response
from pure_pagination import Paginator,EmptyPage,PageNotAnInteger


# 家居搜索
class SearchView(View):
    def post(self, request):
        kw = request.POST.get('keyword')
        search_list = Furnishing.objects.filter(Q(btitle__contains=kw))

        ctx = {
            'Furnishing_list': search_list,
        }
        return render(request, 'zhanshi.html', ctx)


# 文章搜索
class ArticleView(View):
    def post(self, request):
        kw = request.POST.get('keyword')
        print(kw)
        search_list = News.objects.filter(Q(ntitle__contains=kw) | Q(newcontent__contains=kw))
        print(search_list)
        ctx = {
            'news_list':search_list,
        }
        return render(request, 'shishidongtai.html', ctx)


# 首页
def index(request, th=1):
    th = int(th)
    # 轮播图
    banner_list = Banner.objects.all()
    # 分类
    category_list = Category.objects.all()
    # 家居
    furnishing_list = Furnishing.objects.filter(category=th)[:4]

    ctx = {
        'banner_list': banner_list,
        'category_list': category_list,
        'furnishing_list': furnishing_list,
    }
    return render(request, 'index.html', ctx)


# 关于我们
def guanyu(request):
    about_list = AboutAs.objects.all()
    ctx = {
        'about_list':about_list,
    }
    return render(request, 'guanyu.html',ctx)


# 产品展示
def zhanshi(request, zid=1):
    zid = int(zid)
    if zid != 1:
        Furnishing_list = Furnishing.objects.filter(category=zid)
    else:
        Furnishing_list = Furnishing.objects.filter(category=zid)
    category = Category.objects.all()
    # 现代沙发系列
    modern = Category.objects.get(id=zid)
    # 分页
    try:
        page = request.GET.get('page', 1)
    except PageNotAnInteger:
        page = 1

    p = Paginator(Furnishing_list, per_page=6, request=request)

    Furnishing_list = p.page(page)

    ctx = {
        'post_list': Furnishing_list,
        'category_list': category,
        'modern': modern,
    }
    return render(request, 'zhanshi.html', ctx)


# 在线定制
def dingzhi(request):
    # 列表
    dingzhi_list = DingZhi.objects.all()
    ctx = {
        'dingzhi_list':dingzhi_list,
    }
    return render(request, 'dingzhi.html',ctx)
    # 客户需求表单
def dingzhi_kehu(request):
    name = request.POST.get('name')
    address = request.POST.get('address')
    number = request.POST.get('number')
    email = request.POST.get('email')
    describe = request.POST.get('describe')
    auth_code = request.POST.get('auth_code')

    uesr = Demand()
    uesr.name = name
    uesr.address = address
    uesr.number = number
    uesr.email = email
    uesr.describe = describe
    uesr.auth_code = auth_code


    uesr.save()
    return redirect(reverse('jiaju:index'))



# 实时动态
def dongtai(request, oid=-1):
    if oid != -1:
        news_list = News.objects.filter(ncategory=oid)
    else:
        news_list = News.objects.all()
    ctx = {

        'news_list': news_list,
    }
    return render(request, 'shishidongtai.html', ctx)


# 筑梦咨询
def zixun(request):
    zhumeng_list = News.objects.all()
    new_zhumeng_list = []
    new_hangnei_list = []
    for info in zhumeng_list:
        if info.ncategory.nctitle == '筑梦动态':
            new_zhumeng_list.append(info)
        else:
            new_hangnei_list.append(info)

    ctx = {
        'zhumeng_list': zhumeng_list,
        'new_zhumeng_list': new_zhumeng_list,
        'new_hangnei_list': new_hangnei_list,
    }

    return render(request, 'zixun.html', ctx)


# 联系我们
def lianxiwomen(request):
    return render(request, 'lianxiwomen.html')


# 动态详情
def detail(request, did):
    # 当前文章
    new = News.objects.get(id=did)
    # 获取当前分类对象
    # print(new.id)
    # 获取当前分类下所有文章
    content_list = News.objects.filter(ncategory=new.ncategory)
    # print(content_list)
    # 下一条
    index = 0
    #求出当前文章在content_list里的索引
    for i in content_list:
        if i.id == new.id:
            break
        index += 1
#当前所有文章的最大索引
    num = int(len(content_list)) - 1

    if index == 0:
        index += 1

        next_list = content_list[index]
    elif index == num:
        next_list = content_list[0]
    else:
        next_list = content_list[index + 1]

    # 上一条
    index = 0
    for i in content_list:
        if i.id == new.id:
            break
        index += 1

    if index == 0:
        top_list = content_list[num]
    else:
        index -= 1
        top_list = content_list[index]
    ctx = {
        'new': new,
        'next_list': next_list,
        'top_list': top_list,
    }
    return render(request, 'xiaozhishi.html', ctx)
