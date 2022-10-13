from flask import Flask, request


app = Flask(__name__)

@app.route('/echo')
def echo():    
    request_data = request.get_data()
    print (f'data : {request_data}')
    if request_data is None or len(request_data) == 0: 
        return 'nothing to echo'
    else :
        return request_data

if __name__ == '__main__':
    app.run(host='0.0.0.0',port=5000)