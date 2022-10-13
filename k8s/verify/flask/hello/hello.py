from flask import Flask, request


app = Flask(__name__)

@app.route('/hello_world/<username>')
def hello_world(username):    
    return f'Hello {username}, welcome to --- Flask World ---'
    
if __name__ == '__main__':
    app.run(host='0.0.0.0',port=5000) 
