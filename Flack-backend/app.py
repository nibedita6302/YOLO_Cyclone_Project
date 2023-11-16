import shutil
from flask import Flask, flash, request, redirect, url_for, render_template, send_file
import numpy as np
import pandas as pd
import glob
from tqdm import tqdm
import os
import tempfile
from werkzeug.utils import secure_filename
import cv2
from utils.general import methods

from flask_cors import CORS
import detect




def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

app = Flask(__name__)
app.debug = True
CORS(app)

UPLOAD_FOLDER = 'upload/'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
ALLOWED_EXTENSIONS = set(['png', 'jpg', 'jpeg', 'gif'])


def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS


@app.route('/', methods=['POST'])
def upload_image():
    if 'image' not in request.files:
        return {
            "status": "error",
            "status_code": 0,
            "message": "Upload an image first"
        }
    file = request.files['image']
    if file.filename == '':
        flash('No image selected for uploading')
        return {
            "status": "error",
            "status_code": 0,
            "message": "No image selected for uploading"
        }
    
    if file and allowed_file(file.filename):
        filename = secure_filename(file.filename)

        # Save image
        savePath = os.path.join(app.config['UPLOAD_FOLDER'], filename)
        file.save(savePath)

        # Prediction
        detect.run(weights="runs\\train\\cyclone\\weights\\best.pt",
                   source=savePath, name="cyclone", project="static")

        # Upload Output File
        list_of_files = glob.glob('static\\*')
        latest_file = max(list_of_files, key=os.path.getctime)
        lastOne = latest_file.split("\\")
        lastOne = lastOne[len(lastOne) - 1]
        img = os.listdir(latest_file)
        filepath = lastOne + "/" + img[0]

        return send_file("D:/coding/Final-Year-Project/Flack-backend/static/" + lastOne + "/crops/Cyclone/"+img[0].split('.')[0]+".jpg", mimetype='image/jpeg')
    else:
        return {
            "status": "error",
            "status_code": 0,
            "message": "Allowed image types are - png, jpg, jpeg, gif"
        }
 

@app.route('/')
def Home():
    return "Hello SSK"


if __name__ == '__main__':
    app.run(port=8000)