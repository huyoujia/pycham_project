from django.shortcuts import render
from .models import Banner, Category, Furnishing, NewsCategory, News
from django.shortcuts import render_to_response
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger


# Create your views here.
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
    return render(request, 'guanyu.html')


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
    ctx = {
        'Furnishing_list': Furnishing_list,
        'category_list': category,
        'modern': modern,
    }
    return render(request, 'zhanshi.html', ctx)


# 在线定制
def dingzhi(request):
    return render(request, 'dingzhi.html')


# 实时动态
def dongtai(request):
    news_list = News.objects.all()
    ctx = {

        'news_list': news_list,
    }
    return render(request, 'shishidongtai.html', ctx)


# 筑梦咨询
def zixun(request):
    return render(request, 'zixun.html')


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
    for i in content_list:
        if i.id == new.id:
            break
        index += 1

    num = int(len(content_list)) - 1
    if index == 0:
        next_list = content_list[num]

    else:
        index += 1
        next_list = content_list[index]

    # 上一条
    index = 0
    for i in content_list:
        if i.id == new.id:
            break
        index += 1

    if index == num:
        top_list = content_list[0]
    else:
        index -= 1
        top_list = content_list[index]
    ctx = {
        'new': new,
        'next_list': next_list,
        'top_list': top_list,
    }
    return render(request, 'xiaozhishi.html', ctx)
