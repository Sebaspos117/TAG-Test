from datetime import datetime, timedelta

from flask import jsonify, request

from app import app, db
from app.models import tb_users  # Import the tb_users model


@app.route('/users', methods=['GET'])
def get_users():
    users = tb_users.query.all()
    user_list = [{'user_id': user.user_id, 'name': user.name, 'username': user.username, 'password': user.password} for user in users]
    return jsonify(user_list)

@app.route('/users', methods=['POST'])
def create_user():
    data = request.get_json()
    new_user = tb_users(name=data['name'], username=data['username'], password=data['password'])
    db.session.add(new_user)
    db.session.commit()
    return jsonify({'message': 'User created successfully'})


SECRET_KEY = "flash123"
ALGORITHM = "HS256"

# Function to create a new token

   # def create_access_token(data: dict, expires_delta: timedelta):
    #    to_encode = data.copy()
     #   expire = datetime.utcnow() + expires_delta
      #  to_encode.update({"exp": expire})
       # encoded_jwt = jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)
        #return encoded_jwt

    #@app.route('/token', methods=['POST'])
    #def generate_token():
     #   data = request.get_json()
      #  username = data.get('username')
       # password = data.get('password')

        # Add your authentication logic here, validate the username and password
        # If authentication is successful, generate a token
        #if username and password:
         #   expires_delta = timedelta(minutes=30)  # Token expiration time (adjust as needed)
          #  access_token = create_access_token(data={"sub": username}, expires_delta=expires_delta)
           # return jsonify({"access_token": access_token, "token_type": "bearer"})

        # If authentication fails, return an error response
        #return jsonify({"message": "Authentication failed"}), 401

    #@app.route('/validate-user', methods=['GET'])
    #def validate_user():
     #   token = request.headers.get('Authorization')

      #  if not token:
 #           return jsonify({"message": "Token is missing"}), 401
#
  #      try:
   #         payload = jwt.decode(token[7:], SECRET_KEY, algorithms=[ALGORITHM])
    #        username = payload.get("sub")

            # Query the database to validate the user based on the username
           # user = tb_users.query.filter_by(username=username).first()

          #  if user:
          #      return jsonify({"name": user.name})
          #  else:
         #       return jsonify({"message": "User not found"}), 404
      #  except JWTError:
          #  return jsonify({"message": "Invalid token"}), 401