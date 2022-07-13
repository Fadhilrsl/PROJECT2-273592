import 'package:firstapp/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:firstapp/config.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool _rememberMe = false;
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordControllera = new TextEditingController();
  TextEditingController _passwordControllerb = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RUBIK CUBE',
      home: Scaffold(
        body: Center(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.fromLTRB(70, 50, 50, 10),
                  child:
                      Image.asset('assets/images/clipart918134.png', scale: 2)),
              SizedBox(height: 5),
              Text(
                'Sign Up',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Card(
                margin: EdgeInsets.all(20),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Column(children: [
                    TextField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'E-mail', icon: Icon(Icons.email)),
                    ),
                    TextField(
                      controller: _passwordControllera,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Password', icon: Icon(Icons.lock)),
                      obscureText: true,
                    ),
                    TextField(
                      controller: _passwordControllerb,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Enter Password Again',
                          icon: Icon(Icons.lock)),
                      obscureText: true,
                    ),
                    SizedBox(height: 10),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      minWidth: 200,
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: _onRegister,
                      color: Colors.blue[600],
                    ),
                    SizedBox(height: 10),
                  ]),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                child:
                    Text("Already Register?", style: TextStyle(fontSize: 15)),
                onTap: _alreadyRegister,
              ),
            ],
          ),
        )),
      ),
    );
  }

  void _onChange(bool value) {
    print(value);
    setState(() {
      _rememberMe = value;
    });
  }

  void _alreadyRegister() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  void _onRegister() {
    String _email = _emailController.text.toString();
    String _passworda = _passwordControllera.text.toString();
    String _passwordb = _passwordControllerb.text.toString();

    if (_email.isEmpty || _passworda.isEmpty || _passwordb.isEmpty) {
      Fluttertoast.showToast(
          msg: "Email/password is empty",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.blue[600],
          textColor: Colors.white,
          fontSize: 16.0);
      return;
    }
    //checking data integrity

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            title: Text("Register New User ?"),
            content: Text("Are You Sure ?"),
            actions: [
              TextButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                  _registerUser(_email, _passworda);
                },
              ),
              TextButton(
                  child: Text("Cancel"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ],
          );

          ///rubik/php/register.php
        });
  }

  Future<void> _registerUser(String _email, String _password) async {
    http.post(Uri.parse(MyConfig.server + "/rubic/register.php"), body: {
      "email": _email,
      "password": _password,
    }).then((response) {
      print(response.body);
      if (response.body == "success") {
        Fluttertoast.showToast(
            msg: "Registration Success",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.blue[600],
            textColor: Colors.white,
            fontSize: 16.0);
      } else {
        Fluttertoast.showToast(
            msg: "Failed",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.blue[600],
            textColor: Colors.white,
            fontSize: 16.0);
      }
    });
  }
}
