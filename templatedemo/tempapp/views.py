from django.shortcuts import render

# Create your views here.
def ajaxget(request):
    return render(request,'ajaxGet.html')