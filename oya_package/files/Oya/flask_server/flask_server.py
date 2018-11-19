from flask import Flask
import subprocess
import time
import sys
import json
from flask import request

app=Flask(__name__)

@app.route('/hello')
def helloHandler():
    return "Hello from LinkIt"

@app.route('/list')
def iwprivScan():
    subprocess.call(['sh','/Oya/flask_server/get_aplist.sh'])
    aplist=[]
    count =0
    with open('/Oya/flask_server/APLIST.txt','r') as f:
        for line in f:
            if(count == 0):
                count = count + 1
                continue
            else:
                r=line.split(" ")
                ap={}
                try:
                    ap['wps']=r[-1]
                except IndexError:
                    ap['wps']=''
                try:
                    ap['nt']=r[-2]
                except IndexError:
                    ap['nt']=''
                try:
                    ap['extch']=r[-3]
                except IndexError:
                    ap['extch']=''
                try:
                    ap['wifimode']=r[-4]
                except IndexError:
                    ap['wifimode']=''
                try:
                    ap['signal']=r[-5]
                except IndexError:
                    ap['signal']=''
                try:
                    ap['security']=r[-6]
                except IndexError:
                    ap['security']=''
                try:
                    ap['bssid']=r[-7]
                except IndexError:
                    ap['bssid']=''
                ap['ssid']=" ".join(r[1:-7])
                aplist.append(ap)
                count = count + 1
    retval = {
        'list': aplist
    }
    subprocess.call(['rm','/Oya/flask_server/APLIST.txt'])
    return json.dumps(retval)

@app.route('/connect', methods=['POST'])
def connectToAp():
    dat = request.data
    dat = json.loads(dat)
    ssid = dat['ssid']
    bssid = dat['bssid']
    password = dat['pass']
    security = dat['security']
    subprocess.call(['sh','/Oya/flask_server/connect_ap.sh',ssid,bssid,password,security])
    return "ok"

app.run(host='0.0.0.0',port=8090)
