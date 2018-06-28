from fengzhunag import *
import hashlib

#登录
def login():
    name = input('请输入用户名')
    pwd = input('输入密码')
    #加密
    pwd = doPwd(pwd)

    helper = MysqlHelper('127.0.0.1','root','1','2018db')

    helper.connect()

    sql = 'select * from userinfos where uname=%s and upwd=%s'

    data =  helper.fetchone(sql,[name,pwd])

    if data != None:
        print('登陆成功')

    else:
        print('失败失败')





def doPwd(pwd):
    '''sha1编码'''
    mysha1 = hashlib.sha1()
    mysha1.update(pwd.encode('utf-8'))
    pwd = mysha1.hexdigest()
    return pwd

#注册
def register():
    name = input('输入用户名')
    pwd = input('输入密码')
    #加密
    pwd = doPwd(pwd)

    helper = MysqlHelper('127.0.0.1','root','1','2018db')
    helper.connect()
    sql = 'insert into userinfos(uname,upwd) values(%s,%s)'
    params = [name,pwd]
    count = helper.insert(sql,params)
    if count:
        print('操作成功')

    else:
        print('操作失败')

# register()
login()
