import 'package:chat_app/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/constants.dart';

class RegistrationScreen extends StatefulWidget {
  static const id = "registration_screen";
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                value = email;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                value = password;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your password'),
            ),SizedBox(
              height: 8.0,
            ),
            RoundedButton(
              title: 'Register',
              color: Colors.lightBlue,
              onPressed: () {
                //to be completed
              },
            ),
          ],
        ),
      ),
    );
  }
}

