import os
from flask import Flask, url_for
from flask import render_template
import json


app = Flask(__name__)

def banner():
    filename = os.path.join(app.static_folder, 'data/banner.json')
    with open(filename, encoding="utf-8") as f:
        banner = json.load(f);
    return banner;

def competition():
    filename = os.path.join(app.static_folder, 'data/competition.json')
    with open(filename, encoding="utf-8") as f:
        competition = json.load(f);
    return competition;

def notice():
    filename = os.path.join(app.static_folder, 'data/notice.json')
    with open(filename, encoding="utf-8") as f:
        notice = json.load(f);
    return notice;

def activity():
    filename = os.path.join(app.static_folder, 'data/activity.json')
    with open(filename, encoding="utf-8") as f:
        activity = json.load(f);
    return activity;

def link():
    filename = os.path.join(app.static_folder, 'data/link.json')
    with open(filename, encoding="utf-8") as f:
        link = json.load(f);
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