from flask import Flask, request, jsonify
from datetime import datetime
import pytz

app = Flask(__name__)

@app.route("/")
def home():
    return "🌍 World Clock API Running Successfully!"

@app.route("/time")
def get_time():
    tz_name = request.args.get("tz", "UTC")
    try:
        tz = pytz.timezone(tz_name)
    except pytz.UnknownTimeZoneError:
        return jsonify({"error": f"Unknown timezone: {tz_name}"}), 400

    current_time = datetime.now(tz).strftime("%Y-%m-%d %H:%M:%S")
    return jsonify({"timezone": tz_name, "current_time": current_time})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
