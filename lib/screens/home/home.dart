import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart'; 
import 'package:brew_crew/services/auth.dart';

class Home extends StatelessWidget {
   Home({super.key});
   
  final AuthService _auth = AuthService(); 
  final user = FirebaseAuth.instance.currentUser!; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: _auth.signUserOut, icon:const Icon(Icons.logout))]),
      body: Center( // centering the column
        child: Text(
              'LOGGED IN AS ${user.email!}'),
        ),
      );
  }
}