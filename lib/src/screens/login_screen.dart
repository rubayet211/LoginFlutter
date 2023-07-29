import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: [
            emailField(),
            passowordField(),
            //submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
    );
  }

  Widget passowordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Password",
      ),
    );
  }

  //Widget submitButton() {}
}
