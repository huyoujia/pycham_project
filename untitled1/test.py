import pymysql
from fengzhunag import *
helper = MysqlHelper('127.0.0.1','root','1','2018db')

helper.connect()

sql = 'update student set name = %s where id = %s '

name = input('输入要改的名字')
id = int(input('输入编号'))

params = [name,id]
data = helper.insert(sql,params)

#判断
if data:
    print('操作成功')
else:
    print('操作失败')


#helper.close()