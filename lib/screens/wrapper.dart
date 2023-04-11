import 'package:brew_crew/screens/authenticate/sign_in.dart';
import 'package:brew_crew/screens/home/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {

    //Return either Home or Authenticate Widget

    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {

              // Is User logged in or not
            if (snapshot.hasData && snapshot.data != null) {
              // User is signed in, show Home widget
              return Home();
            } else {
              // User is not signed in, show Authenticate widget
              return SignIn();
            }          
        },
      ),
    );
  }
}
