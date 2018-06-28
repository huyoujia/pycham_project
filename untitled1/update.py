import pymysql
try:
    coon = None
    cur = None
    #获取连接对象
    coon = pymysql.Connect(host='127.0.0.1',user='root',password='1',port=3306,db='2018db',charset='utf8')

    #获取执行工具
    cur = coon.cursor()

    sql = "insert into student values(0,'搞笑')"
    sql2 = 'select * from student'

    count = cur.execute(sql)
    count2 = cur.execute(sql2)
    print('受影响的行数:%s' % count)

    info = cur.fetchall()
    print(info)

    #提交
    coon.commit()


except Exception as ex:
    print(str(ex))

finally:
    if cur != None:
        cur.close()
    if coon != None:
        coon.close()