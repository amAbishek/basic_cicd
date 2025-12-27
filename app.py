from flask import Flask, render_template

app = Flask(__name__)

def add(a, b):
    return a + b


@app.route("/")
def home():
    result = add(2, 3)
    return render_template("index.html", result=result)


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
