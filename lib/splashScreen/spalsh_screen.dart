import 'dart:async';

import 'package:bike_with_me_app/authentication/login.dart';
import 'package:bike_with_me_app/authentication/signup_screen.dart';
import 'package:bike_with_me_app/mainScreen/main_screen.dart';
import 'package:flutter/material.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreen();
}

class _MySplashScreen extends State<MySplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 10), () async {
      //send user to home page
      Navigator.push(context, MaterialPageRoute(builder: (c) => LoginScreen()));
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/bike-with-me.png"),

          const SizedBox(height: 20,),

          const Text(
            "Bike With Me",
            style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
