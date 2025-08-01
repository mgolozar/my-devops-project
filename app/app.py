from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "Hello from Flask inside Docker!"

@app.route('/health')
def health():
    return "OK", 200