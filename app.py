import os

from flask import Flask, url_for, request
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
    item = {
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
    return render_template('index.html', items=item)


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


@app.route('/download')
def download():
    return render_template('downloads/downloads.html')


@app.route('/guide')
def guide():
    return render_template('guide/guide.html')


@app.route('/report')
def report():
    return render_template('report/report.html')


@app.route('/login/', methods=['GET', 'POST'])
def login():
    if request.method == 'GET':
        return render_template('login/login.html')
    elif request.method == 'POST':
        data = json.loads(request.form.get('data'))
        username = data['username']
        password = data['password']
        result = getData.check_user(username, password)
        if len(result) == 0:
            return '0'
        else:
            return '1'



@app.route('/create')
def create():
    return "create message"


if __name__ == '__main__':
    app.run()
