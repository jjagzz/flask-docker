from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello from Flask running in Docker!"

@app.route("/health")
def health():
    return {"status": "ok"}

if __name__ == "__main__":
    #0.0.0.0 is REQUIRED so the app is reachable from outside the container
    app.run(host="0.0.0.0", port=5000)
