import json
import os
from flask import jsonify

DEBUG = False
this_file = os.path.basename(__file__)

def readJsonFile(filePath: str) -> object:
    """
    Reads a JSON file and returns a Python Object

    Args:
        filePath (str): The path of the JSON file that should be read out

    Returns:
        Object: A Python Object representation of the JSON file
    """    
    with open(filePath) as f:
        d = json.load(f)
        
    return d

def decodeData(data: str) -> str:
    """
    Returns the base64-decoded string

    Args:
        data (str): The string which is to be decoded
    :param data: Test

    Returns:
        str: The decoded string (data)
    """
    return base64.b64decode(data)    

# TODO test
def getJsonObjectById(jsonObjects: object, id: str) -> object:
    """
    Returns a JSON object from a JSON file, given an id

    Args:
        jsonObjects (Object): The JSON from which a single element shall be returned
        id (str): The ID of the object which shall be returned

    Returns:
        Object: A Python Object representation of the JSON object
    """

    filtered_object = ''

    for x in jsonObjects:
        if DEBUG:
            print(this_file + " > x > " + str(x))
            print(this_file + " > id > " + id)
        if str(x['id']) == id:
            filtered_object = x
            break
        else:
            if DEBUG:
                print(this_file + " > x['id'] > " + str(x['id']))

            continue


    # object = jsonify(filtered_object)

    if DEBUG:
        print(this_file + " > jsonObjects > " + str(jsonObjects))
        print(this_file + " > object > " + str(object))
        
    return object