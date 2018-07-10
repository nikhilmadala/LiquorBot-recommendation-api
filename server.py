from flask import Flask, jsonify, request
import pymysql

app = Flask(__name__)

db = pymysql.connect(host='localhost', port=3306, user='root', password='1234')
cur = db.cursor(pymysql.cursors.DictCursor)

@app.route('/',methods = ['GET'])
def index():
    return jsonify({"Mitra":"Hello World!"})  

@app.route('/recommend/', methods=['GET'])
def recommend():
    params = request.args.to_dict()
    budget=format(params["budget"])
    print(budget)
    if "-" in budget:
        print("---------------------------")
        data=budget.split("-")
        min_price=int(data[0])
        max_price=int(data[1])
        sql = "SELECT Name,Location FROM RETAIL.LIQUOR WHERE Age ='{}' AND Type='{}' AND Price BETWEEN {} AND {}".format(params["age"],params["type"], min_price, max_price)
    elif "above" in budget:
        print("+++++++++++++++++++++++++++++")
        data=budget.split(" above")
        min_price=int(data[0])   
        #max_price=100000
        sql = "SELECT Name,Location FROM RETAIL.LIQUOR WHERE Age ='{}' AND Type='{}' AND Price > {}".format(params["age"],params["type"], min_price)

#   sql = "SELECT Name,Location FROM RETAIL.LIQUOR WHERE Age ='{}' AND Type='{}' AND Price BETWEEN {} AND {}".format(params["age"],params["type"], min_price, max_price)
    cur.execute(sql)
    print(sql)
    print(min_price)
    


    a=[]
    for row in cur:
        a.append(row['Name'])
        a.append(row['Location'])
        print(row['Name'])
        print(row['Location'])
    if a != []:
        return_params = {'Product Location':a,'Result':'Success'}
    else:
        return_params = {'Result':'No product meets your criteria'}

    return jsonify(return_params)

# Sample input and output
#  http://127.0.0.1:6004/recommend/?domain=Liquor&age=Young&type=Whisky&budget=3000-20000
    # Recommendation  
    # 0   "Blue Label Blended Scotch"
    # 1   "Shelf 53"
    # 2   "X.R Blended Scotch"
    # 3   "Shelf 49"
    # status  200

#  http://127.0.0.1:6004/recommend/?domain=Liquor&age=Young&type=Whisky&budget=5000+


if __name__ == '__main__':
    app.run(port=6004,host="0.0.0.0")


