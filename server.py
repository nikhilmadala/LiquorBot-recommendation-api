    #!flask/bin/python
from flask import Flask, jsonify, request
import pymysql

app = Flask(__name__)


db = pymysql.connect(host='localhost', port=3306, user='root', password='root1234')
cur = db.cursor(pymysql.cursors.DictCursor)

@app.route('/',methods = ['GET'])
def index():
    return jsonify({"Mitra":"Hello World!"})  
 

@app.route('/recommend/', methods=['GET'])
def recommend():
  params = request.args.to_dict()
  print (params)
  return jsonify(params)

# Sample input and output
#  127.0.0.1:5000/location_query/?domain=Liquor&type=Whisky
#  {
#    "location": "Shelf 52", 
#    "status": 200
#  }

@app.route('/location_query/', methods=['GET'])
def location_query():
    params = request.args.to_dict()

    sql = "SELECT Location FROM rasa_recommendation_API_DB.LIQUOR WHERE Type='%s'"
    cur.execute(sql % params['type'])
    a=[]
    # import pdb; pdb.set_trace()
    for row in cur:
        a.append(row['Location'])
        print(row['Location'])
    
    return_params = {'status': 200, 'location': a}
    return jsonify(return_params)


if __name__ == '__main__':
    app.run(port=6004,host="0.0.0.0")


