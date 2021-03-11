from flask import Flask, jsonify, render_template, request

app = Flask(__name__)


@app.route("/")
def hello():
    return render_template("index.html")


@app.route("/app", methods=["POST"])
def bpp():
    print(request.get_json())
    return jsonify(request.get_json())


if __name__ == "__main__":
    app.run(host="0.0.0.0")
