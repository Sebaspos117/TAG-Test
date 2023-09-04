from app import db


class tb_users(db.Model):
    user_id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(100))
    username = db.Column(db.String(100))
    password = db.Column(db.String(100))

    def __init__(self, name, username, password):
        self.name = name
        self.username = username
        self.password = password