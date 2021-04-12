import os

from flask import Flask, url_for
from flask import render_template
import json

import getData


app = Flask(__name__)





@app.route('/')
def hello_world():
    banner = getData.banner()
    competition = getData.competition()
    notice = getData.notice()
    activity = getData.activity()
    link = getData.link()
    newskin = getData.newskin()
    newhero = getData.newhero()
    video = getData.video()
    issue = getData.issue()
    item={
        "banner": banner,
        "competition": competition,
        "notice": notice,
        "activity": activity,
        "link": link,
        "newskin": newskin,
        "newhero": newhero,
        "video": video,
        "issue": issue
    }
    print(activity)
    return render_template('index.html', items=item)

@app.route('/login')
def login():
    return render_template('login/login.html')

@app.route('/psp')
def psp():
    return render_template('psp/psp.html')

@app.route('/competition')
def competition():
    return render_template('competition/competition.html')

@app.route('/creation')
def creation():
    return render_template('creation/creation.html')

@app.route('/service')
def service():
    return render_template('service/service.html')

@app.route('/create')
def create():
    return "create message"


if __name__ == '__main__':
    app.run()


