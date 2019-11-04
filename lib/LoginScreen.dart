import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              resizeToAvoidBottomPadding: false,
              appBar: AppBar(
                title: Text("Login screen"),
                backgroundColor: Colors.blue,
              ),
              body: Column(
                children: <Widget>[
                  Image.asset("assets/images/ic_flutter_logo.png"),
                  SizedBox(height: 15.0),
                  Text(
                    "Welcome to flutter login screen",
                    style: TextStyle(fontSize: 20, color: Colors.purple),
                  ),
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
                  RaisedButton(
                      child: Text("Login"),
                      onPressed: () {
                        login();
                      },
                      textColor: Colors.white,
                      color: Colors.blue)
                ],
              )),
        ));
  }

  void login() {}
}
