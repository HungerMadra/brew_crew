
import 'package:brew_crew/screens/authenticate/sign_in.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {

    //Return either Home or Authenticate Widget
    return const SignIn();
  }
}
