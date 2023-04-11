import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class AuthService {
  // Instance of Firebase Auth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Method for email/password sign-in
  Future<User?> signInEmailPass(
      TextEditingController emailController,
      TextEditingController passWordController,
      BuildContext context) async {
    // Create a Completer to resolve when sign-in is completed
    Completer<User?> completer = Completer<User?>();

    // Create a GlobalKey to handle dialog dismissal
    GlobalKey<State> keyLoader = GlobalKey<State>();

    // Show loading dialog
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: Dialog(
            key: keyLoader,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 16.0),
                  Text('Signing in...'),
                ],
              ),
            ),
          ),
        );
      },
    );

    try {
      // Access email and password from the controllers
      String email = emailController.text.trim();
      String password = passWordController.text.trim();

      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      // Dismiss loading dialog
      Navigator.of(keyLoader.currentContext!, rootNavigator: true).pop();

      // Resolve the completer with the user
      completer.complete(result.user);

    } on FirebaseAuthException catch (e) {
      // Dismiss loading dialog
      Navigator.of(keyLoader.currentContext!, rootNavigator: true).pop();

      // Show error messages for different error codes
      if (e.code == 'user-not-found') {
        _wrongEmailMessage(context);
      } else if (e.code == 'wrong-password') {
        _wrongPasswordMessage(context);
      }

      // Resolve the completer with null
      completer.complete(null);
    }

    // Return the Future from the completer
    return completer.future;
  }

  // Wrong email message popup
  void _wrongEmailMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const AlertDialog(
          title: Text("Incorrect Email"),
        );
      },
    );
  }

  // Wrong password message popup
  void _wrongPasswordMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const AlertDialog(
          title: Text("Incorrect Password"),
        );
      },
    );
  }


  // Method for sign-out
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }
  
}
