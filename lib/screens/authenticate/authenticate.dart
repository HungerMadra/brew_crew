//This page checks whether to return sign in or sign up 

import 'package:brew_crew/screens/authenticate/register_page.dart';
import 'package:brew_crew/screens/authenticate/sign_in.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

//Initially shows the log in page 

bool showLoginPage = true;

void toggleScreens(){
  setState(() {
    showLoginPage = !showLoginPage;
  });

}

  @override
  Widget build(BuildContext context) {
  
    if (showLoginPage){
        return SignIn(showRegisterPage: toggleScreens);
    }
    else {
      return RegisterPage(showLoginPage: toggleScreens);
    }
  }
}