import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:secla/main.dart';
import 'package:get/get.dart';
import 'package:secla/view/Home.dart';
import 'Register.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'CECLA',
      logo: AssetImage('Images/gradlogo.jpg'),
      onLogin: (_) => Navigator.push(context, MaterialPageRoute(builder: ((context)=> Home()))),
      onSignup: (_) => Navigator.push(context, MaterialPageRoute(builder: ((context)=> Register()))),
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => MyApp(),
        ));
      },
      onRecoverPassword: (_) => Future(null!),
    );
  }
}