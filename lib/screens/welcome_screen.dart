import 'package:flutter/material.dart';
import 'package:chat_app/components/rounded_button.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registration_screen.dart';


class WelcomeScreen extends StatefulWidget {
  static const id = "welcome_screen";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
            RoundedButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              color: Colors.lightBlueAccent,
              title: 'Login',
            ),
            RoundedButton(
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
              color: Colors.lightBlue,
              title: 'Register',
            )
           ,
          ],
        ),
      ),
    );
  }
}
