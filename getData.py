import os
from flask import Flask, url_for
from flask import render_template
import json
import pymysql

app = Flask(__name__)

def execte_db(sql):
    conn = pymysql.connect(host="127.0.0.1", user="root", password="xxx@123", database="lol", charset="utf8")
    cursor = conn.cursor()
    cursor.execute(sql)
    result = cursor.fetchall()
    cursor.close()
    conn.close()
    return result;


def banner():

    sql = """
    		SELECT imgurl FROM banner
    		"""
    banner = execte_db(sql)
    return banner;


def competition():
    sql = """
        		SELECT * FROM competition
        		"""

    competition = execte_db(sql)
    return competition;


def notice():
    sql = """
            		SELECT * FROM notice
            		"""

    notice = execte_db(sql)
    return notice;


def activity():
    sql = """
                		SELECT * FROM activity
                		"""

    activity = execte_db(sql)
    return activity;


def link():
    sql = """
                    		SELECT * FROM link
                    		"""

    link = execte_db(sql)
    return link;


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
