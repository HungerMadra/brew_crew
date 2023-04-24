import 'package:flutter/material.dart';
import '../services/drawer.dart';

class Withdraw extends StatelessWidget {
  Withdraw({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _logoutScaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

       // Add a key to the Scaffold widget to reference it from another widget
      key: _scaffoldKey,

       // Add a Drawer widget to the Scaffold
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
        title: const Text('Request Withdrawal'),
        centerTitle: true,
      ),
      backgroundColor: Colors.greenAccent,
      body: const Center(
        child: Text('R E Q U E S T - W I T H D R A W A L'),
      ),
    );
  }
}
