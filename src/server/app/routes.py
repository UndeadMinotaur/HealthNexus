'''
Defines the routes of the flask REST API
'''

from app import app
from flask import request, jsonify
from flask_restx import Api, Resource, fields

# import server
import utils

import os
import json

HEALTHNEXUS_API_KEY = "32EA671FABB7600DEF2EAA6829A722A3D0FCC49993740140927B9D74F5529E1A"
EMAIL="TODO"

DEBUG = True
this_file = os.path.basename(__file__)

api = Api(title = 'HealthNexus API', description = "Documentation of REST API for Long Covid and ME/CFS", contact = EMAIL, doc='/api',default_mediatype='json', default= "API", default_label = "Click to view the endpoints")
api.init_app(app)

@api.route('/api/health')
class Health(Resource):
    @api.doc(description = "Too be used as a quick health check whether the REST API is up and healthy")
    def get(self):
        '''Quick Start description about what the API does'''
        return jsonify(info="API is up.")

def checkAPIKey(request_data):
    api_key = request_data['APIKEY']

    if api_key != LCME_API_KEY:
        return false
    return true
