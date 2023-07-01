import os
from flask import Flask, request, jsonify, url_for
from flask_cors import CORS
import tensorflow as tf
import pandas as pd
import pickle5 as pickle
import json

app = Flask(__name__)
CORS(app=app)

def load_model(model):
    if (model == 'svr'):
        model = pickle.load(open('./model_support_vector.pkl', 'rb'))
        return model
    if (model == 'rf'):
        model = pickle.load(open('./model_random_forest.pkl', 'rb'))
        return model
    elif (model == 'bilstm'):
        model = tf.keras.models.load_model('model_dl_bilstm.h5')
        return model
    else:
        return

list_model = [
    {
        "model" : "svr",
        "desc" : "Support Vector Regressor (Direkomendasikan)"
    },
    {
        "model" : "rf",
        "desc" : "Random Forest"
    },
    {
        "model" : "bilstm",
        "desc" : "Bidirectional LSTM"
    },
]

@app.route('/', methods = ['GET'])
def detection_system():
    return 'Hello, this is backend'

@app.route('/models', methods = ['GET'])
def get_list_model():
    return json.dumps(list_model)

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

    if req["model"] == "bilstm":
        return jsonify({
            'soh' : float(soh[0][0]),
        })
    else:
        return jsonify({
            'soh' : soh[0],
        })

if __name__ == '__main__':
    app.run(port=5000, debug=True)