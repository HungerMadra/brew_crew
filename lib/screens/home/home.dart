import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart'; 
import 'package:brew_crew/services/auth.dart';

import '../../services/my_buttons.dart';

class Home extends StatelessWidget {
  // Added a named parameter key to the constructor
  Home({Key? key}) : super(key: key);
   
  final AuthService _auth = AuthService(); 
  final user = FirebaseAuth.instance.currentUser!; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LOGGED IN AS ${user.email!}'
            ),
            const SizedBox(height: 25), // Moved the SizedBox widget inside the Column widget
            MyButton(
          text: 'Sign Out',
            onTap: (){ 
            _auth.signUserOut();
             },
                  ),

          ],
        ),
      ),
    );
  }
}
