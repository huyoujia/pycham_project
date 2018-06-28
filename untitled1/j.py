import pymysql

coon = pymysql.Connect(host='127.0.0.1',user='root',password='1',port=3306,database='2018db',charset='utf8')

cur = coon.cursor()

sql = 'select * from student'

count = cur.execute(sql)

print(cur.fetchall())