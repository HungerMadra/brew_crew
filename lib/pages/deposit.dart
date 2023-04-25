import 'package:flutter/material.dart';
import '../screens/home/home.dart';
import '../services/drawer.dart';

class Deposit extends StatelessWidget {
  Deposit({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _logoutScaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {

 return Scaffold(
  key: _scaffoldKey,

  drawer: MyDrawer(
    scaffoldKey: _scaffoldKey,
    logoutScaffoldKey: _logoutScaffoldKey, // <-- add this line
  ),
  
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Home(),
                ));
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_rounded),
            color: Colors.deepPurple,
          ),
        ],
        title: const Text('Deposit Funds'),
        centerTitle: true,
      ),
      backgroundColor: Colors.pinkAccent,
      body: const Center(
        child: Text('D E P O S I T - F U N D S'),
      ),
    );
  }
}
