from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def hello():
    response = {'success': True, 'message': 'Hello !'}
    return jsonify(response), 200

def create_app():
    return app

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)