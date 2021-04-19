import os

from flask import Flask, url_for, request, redirect
from flask import render_template
import json

from werkzeug.utils import secure_filename

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
        result = getData.login(username, password)
        if len(result) == 0:
            return '0'
        else:
            userid = getData.getUserIdByUsername(username)
            aa = {
                "id": userid
            }
            print(aa)
            return aa


@app.route('/register/', methods=['GET', 'POST'])
def register():
    if request.method == 'GET':
        return render_template('register/register.html')
    elif request.method == 'POST':
        data = json.loads(request.form.get('data'))
        username = data['username']
        password = data['password']
        email = data['email']
        mobile = data['mobile']
        user = {
            "username": username,
            "password": password,
            "email": email,
            "mobile": mobile
        }
        result = getData.register(user)
        print(result)
        return '1'


@app.route('/checkuser', methods=['GET', 'POST'])
def check():
    if request.method == 'GET':
        pass
    elif request.method == 'POST':
        data = request.form.get('data')
        print(type(data))
    return '0'


@app.route('/center')
def center():
    return render_template('/center/usercenter.html')


@app.route('/upload', methods=['POST', 'GET'])
def upload():
    if request.method == 'POST':
        f = request.files['file']
        basepath = os.path.dirname(__file__)  # 当前文件所在路径
        upload_path = os.path.join(basepath, 'static/uploads',
                                   secure_filename(f.filename))  # 注意：没有的文件夹一定要先创建，不然会提示没有该路径
        f.save(upload_path)
        return redirect(url_for('upload'))
    return render_template('upload.html')


@app.route('/edituser/<string:id>', methods=['GET', 'POST'])
def edituser(id):
    if request.method == 'GET':
        data = getData.getUserInfoById(id)
        print(data)
        if len(data) == 0:
            return render_template("login/login.html")
        else:
            return render_template('center/usercenter.html', items=data)
    elif request.method == 'POST':
        userid = request.form.get('userid')
        username = request.form.get('username')
        mobile = request.form.get('mobile')
        gender = request.form.get('gender')
        area = request.form.get('area')
        motto = request.form.get('motto')
        print(userid)
        print(username)
        print(mobile)
        print(gender)
        print(area)
        print(motto)
        user = {
            "userid": userid,
            "username": username,
            "mobile": mobile,
            "gender": gender,
            "area": area,
            "motto": motto
        }
        result = getData.updateuserinfo(user)
        return render_template('center/usercenter.html')

@app.route('/create')
def create():
    return "create message"


if __name__ == '__main__':
    app.run()
