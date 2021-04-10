import os

from flask import Flask, url_for
from flask import render_template
import json
import pymysql
import getData


app = Flask(__name__)



def db_conn():
    conn = pymysql.connect(host="127.0.0.1", user="root", password="bettertree@123", database="lol", charset="utf8")
    # 得到一个可以执行SQL语句的光标对象
    cursor = conn.cursor()

    sql = """
		CREATE TABLE USER1 (
		id INT auto_increment PRIMARY KEY ,
		name CHAR(10) NOT NULL UNIQUE,
		age TINYINT NOT NULL
		)ENGINE=innodb DEFAULT CHARSET=utf8;
		"""
    # 执行SQL语句
    cursor.execute(sql)

    # 关闭光标对象
    cursor.close()

    # 关闭数据库连接
    conn.close()

@app.route('/')
def hello_world():
    banner = getData.banner()
    competition = getData.competition()
    notice = getData.notice()
    activity = getData.activity()
    link = getData.link()
    newskin = getData.newskin()
    newhero = getData.newhero()
    item={
        "banner": banner,
        "competition": competition,
        "notice": notice,
        "activity": activity,
        "link": link,
        "newskin": newskin,
        "newhero": newhero
    }
    return render_template('index.html', items=item)

@app.route('/login')
def login():
    return render_template('login/login.html')

@app.route('/create')
def create():
    db_conn()
    return "create message"


if __name__ == '__main__':
    app.run()


