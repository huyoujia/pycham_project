from django.http import HttpResponse
#自定义异常
class MyException(object):
    def process_exception(request,response,exception):
        if isinstance(exception,ZeroDivisionError):
            return HttpResponse('分母不能为0异常')
        elif isinstance(exception,ValueError):
            return HttpResponse('类型转换异常')

