import 'package:flutter/material.dart';
import 'package:sellers_app/authentication/Login_InAuth.dart';
import 'Register_InAuth.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});


  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
               gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Color(0xFF373474),
                ],
        begin: FractionalOffset(0.0, 0.0),
                 end: FractionalOffset(1.0, 0.0),
                 stops: [0.0, 1.0],
                 tileMode: TileMode.clamp,
              ),
            ),
            ),
            automaticallyImplyLeading: false,
            title: const Text("eFood",
              style: TextStyle(
              fontSize: 50,
              color: Colors.white,
              fontFamily: "Sriracha",
         ),
        ),
            centerTitle: true,
            bottom: const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    text: "Login",
                  ),
                  Tab(
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    text: "Register",
                  ),
                ],
              indicatorColor: Colors.white38,
              indicatorWeight: 6,
            ),
           ),
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.black,
                  Color(0xFF373474),
                ],
              ),
            ),
            child: const TabBarView(
              children: [
                LoginInScreen(),
                SignInScreen(),
              ],
            ),
          ),
        ),
      );
     }
   }
