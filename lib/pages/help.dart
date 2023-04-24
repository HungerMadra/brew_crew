import 'package:flutter/material.dart';
import '../services/drawer.dart';

class Help extends StatelessWidget {
  Help({Key? key}) : super(key: key);
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
            _scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_rounded),
            color: Colors.deepPurple,
          ),
        ],
        title: const Text('Help & FAQs'),
        centerTitle: true,
      ),
      backgroundColor: Colors.amberAccent,
      body: const Center(
        child: Text('H E L P & F A Q S'),
      ),
    );
  }
}
