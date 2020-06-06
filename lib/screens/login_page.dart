import 'package:expanrr/database/database_helper.dart';
import 'package:expanrr/models/login.dart';
import 'package:expanrr/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController usernameControlled = TextEditingController();
  TextEditingController passwordControlled = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  DatabaseHelper databaseHelper = DatabaseHelper();
  List<Login> loginList;
  Login login;
  int count = 0;
  var username = '';

  @override
  Widget build(BuildContext context) {
    if (loginList == null) {
      loginList = List<Login>();
      updateListView();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: usernameControlled,
                  keyboardType: TextInputType.text,
                  validator: (String value) {
                    if (value.isEmpty) return "Username can't be empty";
                  },
                  onChanged: (value) {
                    login.username = value;
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
                  controller: passwordControlled,
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
              padding:
              EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
              child: RaisedButton(
                child: Text('Login'),
                onPressed: () {
                  setState(() {
                    if (_formKey.currentState.validate()) {
                      _login();
                    }
                    //todo
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: RaisedButton(
                child: Text('Register User'),
                onPressed: () {
                  navigateToDetail(Login('', ''), 'Add Note');
                  // navigateToDetail(Login('', '',null), '');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToDetail(Login login, String string) async {
    bool result =
    await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Register(login, string);
    }));
    if (result == true) {
      updateListView();
    }
  }

  void updateListView() {
    final Future<Database> dbFuture = databaseHelper.initializeDatabase();
    dbFuture.then((database) {
      Future<List<Login>> loginListFuture = databaseHelper.getLoginList();
      loginListFuture.then((loginList) {
        setState(() {
          this.loginList = loginList;
          this.count = loginList.length;
        });
      });
    });
  }

  void _login() async {
    try{
    List<Login> list = await databaseHelper.getLoginList();
    int flag = 1;
    for (int i = 0; i < list.length; i++) {
      if (usernameControlled.text == list[i].username &&
          passwordControlled.text == list[i].password) {
        setState(() {
          flag = 0;
          login = list[i];
          usernameControlled.text = '';
          passwordControlled.text = '';
        });
      }
    }
    if(flag == 0) {
      print('success');
    }
    if (flag == 1) {
      print('success');
      _showAlertDialog("Status", "Invalid username or password",Colors.red);
      usernameControlled.text = '';
      passwordControlled.text = '';
    }}
    catch(e) {
      _showAlertDialog('Status', 'Invalid username or password', Colors.red);
      print('error:$e');
    }
  }

  void _showAlertDialog(String title, String message,Color color) {
    AlertDialog alertDialog = AlertDialog(
      title: Text(title),
      content: Text(
        message,
        style: TextStyle(color: color),
      ),
    );
    showDialog(context: context, builder: (_) => alertDialog);
  }

}
