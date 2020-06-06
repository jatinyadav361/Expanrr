import 'package:flutter/material.dart';
import 'package:expanrr/models/login.dart';
import 'package:expanrr/database/database_helper.dart';

class Register extends StatefulWidget {
  final String appBarTitle;
  final Login login;
  Register(this.login, this.appBarTitle);

  @override
  _RegisterState createState() =>
      _RegisterState(this.login, this.appBarTitle);
}

class _RegisterState extends State<Register> {
  DatabaseHelper helper = DatabaseHelper();

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController password2Controller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  String appBarTitle;
  Login login;

  _RegisterState(this.login, this.appBarTitle);

  @override
  Widget build(BuildContext context) {
    usernameController.text = login.username;
    passwordController.text = login.password;


    return WillPopScope(
        onWillPop: () {
          moveToLastScreen();
        },
        child: Scaffold(
            appBar: AppBar(
              title: Text('Registeration Page'),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  moveToLastScreen();
                },
              ),
            ),
            body: Form( key: _formKey,
              child: ListView(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: usernameController,
                        keyboardType: TextInputType.text,
                        onChanged: (value) {
                          updateUsername();
                        },
                        validator: (String value) {
                          if (value.isEmpty) return "Username can't be empty";
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter email address',
                          labelText: 'Username',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: passwordController,
                        onChanged: (value) {
                          updatePassword();
                        },
                        keyboardType: TextInputType.text,
                        validator: (String value) {
                          if (value.isEmpty) return "Password can't be empty";
                          if (value.length < 6 || value.length > 18)
                            return "Password must be greater than 5 characters and less than 18 characters";
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Enter password',
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: password2Controller,
                        keyboardType: TextInputType.text,
                        validator:(String value){
                          if(password2Controller.text != passwordController.text)
                            return "Password don't match";
                          if(value.isEmpty)
                            return "Password can't be empty";
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Enter password',
                          labelText: 'Confirm Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: RaisedButton(
                      child: Text('Register'),
                      onPressed: () {
                        setState(() {
                          if (_formKey.currentState.validate()) {
                            _save();
                            usernameController.text = '';
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
            )));
  }

  void moveToLastScreen() {
    Navigator.pop(context,true);
  }

  void updateUsername() {
    login.username = usernameController.text;
  }

  void updatePassword() {
    login.password = passwordController.text;
  }

  void _save() async{
    moveToLastScreen();
    int result;
    List<Login> list = await helper.getLoginList();

    if(login.id != null) {        //update operation
      result = await helper.updateUser(login);
    } else {      //insert operation

      int flag =1 ;
      for(int i=0; i<list.length; i++) {
        if(usernameController.text == list[i].username )
          flag =0;
      }
      if(flag == 1) {
        result = await helper.registerUser(login); }
      else {
        return _showAlertsDialog("Status", "User already exists! "
            "Try again with different username"); }

    }
    usernameController.text = '';


    if(result != 0) {
      passwordController.text = '';
      password2Controller.text = '';
      _showAlertDialog('Status', "User registered successfully");
    }  else {
      _showAlertsDialog("Status", "Problem Registering user");
    }
  }

  void _showAlertsDialog(String title, String message) {
    AlertDialog alertDialog = AlertDialog(
      title: Text(title),
      content: Text(message,style: TextStyle(color: Colors.red),),
    );
    showDialog(context: context,
        builder: (_) => alertDialog
    );
  }

  void _showAlertDialog(String title, String message) {
    AlertDialog alertDialog = AlertDialog(
      title: Text(title),
      content: Text(message,style: TextStyle(color: Colors.green),),
    );
    showDialog(context: context,
        builder: (_) => alertDialog
    );
  }
}
