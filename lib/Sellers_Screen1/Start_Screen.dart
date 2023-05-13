import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sellers_app/Global/global.dart';
import 'package:sellers_app/authentication/auth_screen.dart';

import '../mainScreens/home_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}


class _StartScreenState extends State<StartScreen> {

  startTimer()
  {
    Timer(const Duration(seconds: 6), () async {
      if(firebaseAuth.currentUser != null)
      {
        Navigator.push(
            context, MaterialPageRoute(builder: (c) =>const  HomeScreen()));
      }
      else {
        Navigator.push(
            context, MaterialPageRoute(builder: (c) =>const  AuthScreen()));
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    startTimer();
  }

  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/image2.png"),

            const SizedBox(height: 10,),

            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "FOODIE EXPRESS PARTNER",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontFamily: "Signatra",
                  letterSpacing: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
