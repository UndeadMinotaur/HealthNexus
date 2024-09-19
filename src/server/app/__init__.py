'''
A flask REST API.
The documentation is available as flask_restx / swagger. Start the server and check
localhost:5000
'''

import os

from flask import Flask
from flask_restx import Resource, Api

app = Flask(__name__)

from app import routes

if __name__ == '__main__':
    app.debug = True
    app.run(host="0.0.0.0") #host="0.0.0.0" will make the page world-accessible