from flask import render_template
from app import app

@app.route('/')
def index():
    data = {
        "title" : "First Page",
        "greeting" : "Hello, World!"
    }
    return render_template('index.html',content=data)