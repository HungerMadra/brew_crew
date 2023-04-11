import 'package:brew_crew/screens/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; 


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Wrapper(),
    );
  }
}