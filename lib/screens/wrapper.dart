import 'package:brew_crew/screens/authenticate/authenticate.dart';
import 'package:brew_crew/screens/home/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../services/drawer.dart';

class Wrapper extends StatelessWidget {
  Wrapper({super.key});
   final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
   final GlobalKey<ScaffoldState> _logoutScaffoldKey = GlobalKey<ScaffoldState>();
   

  @override
  Widget build(BuildContext context) {

    //Return either Home or Authenticate Widget

    return Scaffold(
      key: scaffoldKey,
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {

              // Is User logged in or not
            if (snapshot.hasData && snapshot.data != null) {
              // User is signed in, show Home widget
              return const Home();
            } else {
              // User is not signed in, show Authenticate widget
              return const Authenticate();
            }          
        },
      ),
      drawer: MyDrawer(
    scaffoldKey: scaffoldKey,
    logoutScaffoldKey: _logoutScaffoldKey, // <-- add this line
  ),
    );
  }
}
