import os
from flask import Flask, request, jsonify, url_for
import tensorflow as tf
import numpy as np
import pandas as pd
import pickle5 as pickle
from sklearn.preprocessing import MinMaxScaler
from sklearn.metrics import mean_squared_error
from sklearn import metrics
import shutil

app = Flask(__name__)

def load_model(model):
    if (model == 'ml'):
        model = pickle.load(open('./model_random_forest.pkl', 'rb'))
        return model
    elif (model == 'dl'):
        model = tf.keras.models.load_model('model_dl_bilstm.h5')
        return model
    else:
        return

@app.route('/', methods = ['GET'])
def detection_system():
    return 'Hello, this is backend'

@app.route('/soh', methods = ['POST'])
def predict_soh():
    req = request.get_json()
    model = load_model(req["model"])

    print(req["payload"])

    # TODO: make dataframe from req
    df = pd.DataFrame.from_dict([req["payload"]])
    print(df)
    
    soh = model.predict(df);
    print(soh)

    if req["model"] == "ml":
        return jsonify({
            'soh' : soh[0],
        })
    else:
        return jsonify({
            'soh' : float(soh[0][0]),
        })

if __name__ == '__main__':
    app.run(port=5000, debug=True)