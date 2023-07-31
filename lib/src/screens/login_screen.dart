import 'package:flutter/material.dart';
import '../constants/color.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  String? email = '';
  String? password = '';

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
      validator: (value) {
        if (!value!.contains('@')) {
          return 'Please enter a valid email';
        }
      },
      onSaved: (value) {
        email = value;
      },
    );
  }

  Widget passowordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Password",
      ),
      validator: (value) {
        if (value!.length < 4) {
          return 'Password must be at least 4 characters';
        }
      },
      onSaved: (value) {
        password = value;
      },
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(kGreen),
      ),
      child: Text('Submit!'),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          print('Time to post $email and $password to my API');
        }
      },
    );
  }
}
