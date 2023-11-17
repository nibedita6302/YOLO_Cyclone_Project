import shutil
import tensorflow as tf
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

# Load model
model = tf.keras.models.load_model(r'.\save_cnn_model_1o4_batch=8_lr=0.001\save_cnn_model_1o4_batch=8_lr=0.001', compile=False)

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

        return send_file(os.path.abspath("./static/" + lastOne + "/crops/Cyclone/"+img[0].split('.')[0]+".jpg"), mimetype='image/jpeg')
    else:
        return {
            "status": "error",
            "status_code": 0,
            "message": "Allowed image types are - png, jpg, jpeg, gif"
        }
 
@app.route('/predict-intensity', methods=['GET', 'POST'])
def PredictIntensity():
    
    
    list_of_files = glob.glob('static\\*')
    latest_file = max(list_of_files, key=os.path.getctime)
    lastOne = latest_file.split("\\")
    lastOne = lastOne[len(lastOne) - 1]
    img = os.listdir(latest_file)
    
    path = "./static/" + lastOne + "/crops/Cyclone/"+img[0].split('.')[0]+".jpg"
    # Read image
    img = cv2.imread(path)
    img = cv2.resize(img, (128,128))
    x_true = tf.convert_to_tensor(img, tf.float32)
    x_true = tf.expand_dims(x_true, axis=0)
    # Normalize image
    x_true = x_true / 255.0 
    # prediction
    y_pred = model.predict(x_true)
    y_pred_arg = tf.math.argmax(y_pred, axis=-1) ## argmax
    func = lambda x: round(x*100,2)
    data = {
        "status_code": 200,
        "path": path,
        "result": int(y_pred_arg[0]+1)
    }
    return {
            "prediction": list(map(func,y_pred[0])),
            "status": "Success",
            "status_code": 1,
            "message": "Allowed image types are - png, jpg, jpeg, gif"
     }


@app.route('/')
def Home():
    return "Hello SSK"


if __name__ == '__main__':
    app.run(port=8000)