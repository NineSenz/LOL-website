import os
from flask import Flask, url_for
from flask import render_template
import json
import pymysql

app = Flask(__name__)


def execte_db(sql):
    conn = pymysql.connect(host="47.116.66.57", user="lol", password="123456", database="lol", charset="utf8")
    cursor = conn.cursor()
    cursor.execute(sql)
    result = cursor.fetchall()
    cursor.close()
    conn.close()
    return result


def banner():
    sql = """
    		SELECT imgurl FROM banner
    		"""
    banner = execte_db(sql)
    return banner


def competition():
    sql = """
        SELECT * FROM competition
        """

    competition = execte_db(sql)
    return competition


def notice():
    sql = """
            SELECT * FROM notice
            """

    notice = execte_db(sql)
    return notice


def activity():
    sql = """
            SELECT * FROM activity
            """

    activity = execte_db(sql)
    return activity


def link():
    sql = """
            SELECT * FROM link
            """

    link = execte_db(sql)
    return link


def login(username, password):
    print(password)
    sql = "SELECT * FROM user WHERE username='%s" % username + "' and password='%s" % password + "'"
    print(sql)
    check = execte_db(sql)
    return check


def register(user):
    email = user["email"]
    username = user["username"]
    password = user["password"]
    mobile = user["mobile"]
    con = pymysql.connect(host='47.116.66.57', user='lol', password='123456', database='lol', port=3306)
    # 创建游标对象
    cur = con.cursor()
    # 编写插入数据的sql
    sql = 'insert into user(email,username,password,mobile) value(%s,%s,%s,%s)'
    try:
        # 执行sql
        cur.executemany(sql, [(email, username, password, mobile)])
        # 提交事务
        con.commit()
        print('插入成功')
    except Exception as e:
        print(e)
        con.rollback()
        print('插入失败')
    finally:
        con.close()

def updateuserinfo(user):
    con = pymysql.connect(host='47.116.66.57', user='lol', password='123456', database='lol', port=3306)
    # 创建游标对象
    cur = con.cursor()
    # 编写插入数据的sql
    sql = 'UPDATE user SET username=%s, mobile=%s,gender=%s, area=%s, motto=%s WHERE(id=%s)'
    try:
        # 执行sql
        cur.executemany(sql, [(user["username"], user["mobile"], user["gender"], user["area"], user["motto"], user["userid"])])
        # 提交事务
        con.commit()
        print('插入成功')
    except Exception as e:
        print(e)
        con.rollback()
        print('插入失败')
    finally:
        con.close()

def check(username):
    sql = "SELECT * FROM user WHERE username='%s" % username + "'"
    print(sql)
    check = execte_db(sql)
    print(check)
    return check


def getUserIdByUsername(username):
    sql = "SELECT id FROM user WHERE username='%s" % username + "'"
    print(sql)
    userid = execte_db(sql)
    return userid[0][0]

def getUserInfoById(id):
    sql = "SELECT * FROM user WHERE id='%s" % id + "'"
    print(sql)
    userinfo = execte_db(sql)
    return userinfo

def newskin():
    filename = os.path.join(app.static_folder, 'data/newskin.json')
    with open(filename, encoding='utf-8') as f:
        newskin = json.load(f);
    return newskin;


def newhero():
    filename = os.path.join(app.static_folder, 'data/newhero.json')
    with open(filename, encoding='utf-8') as f:
        newhero = json.load(f);
    return newhero;


def video():
    filename = os.path.join(app.static_folder, 'data/video.json')
    with open(filename, encoding='utf-8') as f:
        video = json.load(f);
    return video;


def issue():
    filename = os.path.join(app.static_folder, 'data/issue.json')
    with open(filename, encoding='utf-8') as f:
        issue = json.load(f);
    return issue;
