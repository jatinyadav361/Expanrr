class Login {
  int _id;
  String _username;
  String _password;

  Login(this._username, this._password);

  Login.withId(this._id,this._password,this._username);

  String get username => _username;

  int get id => _id;

  String get password => _password;

  set username(String newUsername) {
    this._username = newUsername;
  }

  set password(String newPassword) {
    this._password = newPassword;
  }

  //convert login object into map object
  Map<String , dynamic > toMap() {
    var map = Map<String, dynamic>(); // empty map object

    if(id != null) {
      map['id'] = _id;
    }
    map['username'] = _username;
    map['password'] = _password;
    return map;
  }

  //convert map object into login object
  Login.fromMapObject(Map<String,dynamic> map){
    this._id = map['id'];
    this._username = map['username'];
    this._password = map['password'];
  }

}