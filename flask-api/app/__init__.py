from flask import Flask, jsonify
from flask_cors import CORS  # Import CORS from flask_cors
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
CORS(app)  # Add this line to enable CORS for your Flask app

# Configure the PostgreSQL database connection
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://postgres:mandril77@localhost/myproject_db'
db = SQLAlchemy(app)

from app import routes
