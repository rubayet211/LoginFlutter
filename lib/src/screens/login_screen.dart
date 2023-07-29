import 'package:flutter/material.dart';
import '../constants/color.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            emailField(),
            passowordField(),
            Container(margin: EdgeInsets.only(top: 25.0)),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
      ),
    );
  }

  Widget passowordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Password",
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(kGreen),
      ),
      child: Text('Submit!'),
      onPressed: () {
        formKey.currentState?.reset();
      },
    );
  }
}
