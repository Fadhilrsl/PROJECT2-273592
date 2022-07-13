import 'package:firstapp/mainscreen.dart';
import 'package:firstapp/splashhome.dart';
import 'package:flutter/material.dart';
import 'registrationscreen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

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
                'Login',
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
                      controller: _passwordController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Password', icon: Icon(Icons.lock)),
                      obscureText: true,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Checkbox(
                            value: _rememberMe,
                            onChanged: (value) {
                              _onChange(value!);
                            }),
                        Text("Remember Me")
                      ],
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      minWidth: 200,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: _onLogin,
                      color: Colors.blue[600],
                    ),
                    SizedBox(height: 10),
                  ]),
                ),
              ),
              SizedBox(height: 14),
              GestureDetector(
                child: Text("Register New Account",
                    style: TextStyle(fontSize: 15)),
                onTap: _registerNewUser,
              ),
              GestureDetector(
                child: Text("Forgot Password", style: TextStyle(fontSize: 15)),
                onTap: _forgotPassword,
              ),
              GestureDetector(
                child: Text("Guest Mode", style: TextStyle(fontSize: 20)),
                onTap: _guest,
              ),
            ],
          ),
        )),
      ),
    );
  }

  void _onLogin() {}

  void _onChange(bool value) {
    String _email = _emailController.text.toString();
    String _password = _passwordController.text.toString();

    if (_email.isEmpty || _password.isEmpty) {
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
    setState(() {
      _rememberMe = value;
    });
  }

  void _registerNewUser() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RegistrationScreen()));
  }

  void _guest() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SplashHome()));
  }

  void _forgotPassword() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Forgot Your Password"),
            content: new Container(
              height: 100,
              child: Column(children: [
                Text("Enter your recovery email"),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'E-mail', icon: Icon(Icons.email)),
                )
              ]),
            ),
            actions: [
              TextButton(
                child: Text("Submit"),
                onPressed: () {},
              ),
              TextButton(
                  child: Text("Cancel"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ],
          );
        });
  }
}
