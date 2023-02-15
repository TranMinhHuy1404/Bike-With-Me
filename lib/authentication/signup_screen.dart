import 'package:bike_with_me_app/authentication/car_inf0_screen.dart';
import 'package:bike_with_me_app/authentication/login.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            
            const SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset("images/bike-with-me.png"),
            ),

            const SizedBox(height: 10,),

            const Text(
              "Register as a Driver",
              style: TextStyle(
                fontSize: 26,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),

            TextField(
              controller: nameTextEditingController,
              style: const TextStyle(color: Colors.black,),
              decoration: const InputDecoration(
                labelText: "Name",
                hintText: "Name",
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
              controller: phoneTextEditingController,
              keyboardType: TextInputType.phone,
              style: const TextStyle(color: Colors.black,),
              decoration: const InputDecoration(
                labelText: "Phone",
                hintText: "Phone",
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
                Navigator.push(context,MaterialPageRoute(builder: (c) => CarInfoScreen()));},
              style: ElevatedButton.styleFrom(primary: Colors.deepOrange,),
              child: const Text(
                "Create Account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),

            TextButton(
              child: const Text(
                "Already have an account? Login here",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginScreen()));
              },
            )
          ],
        ),
      )),
    );
  }
}
