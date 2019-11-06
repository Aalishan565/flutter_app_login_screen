import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginView();
  }
}

class LoginView extends State<LoginScreen> {
  TextEditingController userNameTextEditingController =
      new TextEditingController();
  TextEditingController passwordTextEditingController =
      new TextEditingController();

  String userName;
  String password;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Login screen"),
            backgroundColor: Colors.blue,
          ),
          body: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: ListView(
                      children: <Widget>[
                        Image.asset("assets/images/ic_flutter_logo.png"),
                        SizedBox(height: 15.0),
                        Center(
                            child: Text("Welcome to flutter login screen",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.purple))),
                        SizedBox(height: 15.0),
                        Padding(
                            padding: EdgeInsets.all(15.0),
                            child: TextField(
                              controller: userNameTextEditingController,
                              decoration: InputDecoration(
                                  labelText: "User Name",
                                  border: OutlineInputBorder()),
                            )),
                        Padding(
                            padding: EdgeInsets.all(15.0),
                            child: TextField(
                              controller: passwordTextEditingController,
                              decoration: InputDecoration(
                                  labelText: "Password",
                                  border: OutlineInputBorder()),
                            )),
                        SizedBox(height: 15.0),
                        Center(
                            child: RaisedButton(
                                child: Text("Login"),
                                onPressed: () {
                                  login();
                                },
                                textColor: Colors.white,
                                color: Colors.blue))
                      ],
                    ),
                  ))),
        ));
  }

  void login() {
    userName = userNameTextEditingController.text;
    password = passwordTextEditingController.text;
    if (userName.isEmpty || userName == "") {
      showToast("Enter user name");
      return;
    } else if (password.isEmpty || password == "") {
      showToast("Enter password");
      return;
    } else if ((userName == "Aalishan") && (password == "12345")) {
      showToast("Login success");
    } else {
      showToast("User name or password mismatch");
    }
  }

  void showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
