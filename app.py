import os
from flask import Flask

app = Flask(app)

@app.route("/")
def main():
    return "Welcome!"

@app.route("/how are you")
def hello():
    return "I'm good"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
