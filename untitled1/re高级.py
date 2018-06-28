#coding = utf-8
import re

#serach
#ret = re.search(r'\d+','24阅读次数为9888')
#print(ret.group())

#findall

#ret = re.findall(r'\d+','python = 999 c = 2245  ')
#print(ret)

#sub 将匹配到的数据进行替换
#ret = re.sub(r'\d+','998','python = 993')
#print(ret)

#方法2
#def add(temp):
#    stw = temp.group()
#    num = int(stw) + 1
#    return str(num)

#ret = re.sub(r'\d+',add,'python = 99')
#print(ret)


#split 切割字符串
ret = re.split(r':| ','info:xiaozhang 33 shandong')
print(ret)