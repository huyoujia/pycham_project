import pymysql
try:
    coon = pymysql.Connect(host='127.0.0.1',user='root',password='1',port=3306,db='2018db',charset='utf8')
    cs1 = coon.cursor()
    count = cs1.execute('insert into student values(0,"开心")')

    coon.commit()
    print(count)
    cs1.close()
    coon.close()
except Exception as e:
    print(e)
