import 'package:bike_with_me_app/authentication/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
          children: [

            const SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset("images/bike-with-me.png"),
            ),

            const SizedBox(height: 10,),

            const Text(
              "Login as a Driver",
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),

            TextField(
              controller: emailTextEditingController,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.black,),
              decoration: const InputDecoration(
                labelText: "Email",
                hintText: "Email",
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black),),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black),),
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                ),
              ),
            ),

            TextField(
              controller: passwordTextEditingController,
              keyboardType: TextInputType.text,
              obscureText: true,
              style: const TextStyle(color: Colors.black,),
              decoration: const InputDecoration(
                labelText: "Password",
                hintText: "Password",
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey),),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey),),
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                ),
              ),
            ),

            const SizedBox(height: 20,),

            ElevatedButton(
              onPressed: () {
                
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange,
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),

            TextButton(
              child: const Text(
                "Do not have an account? Sign up here",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (c)=> SignUpScreen()));
              },
            )
          ],
        ),
        ),
        
      ),
    );
  }
}