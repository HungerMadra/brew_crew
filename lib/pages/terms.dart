import 'package:flutter/material.dart';
import '../screens/home/home.dart';
import '../services/drawer.dart';

class Terms extends StatelessWidget {
  Terms({Key? key}) : super(key: key);
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
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Home(),
                ));
              },
              icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.deepPurple,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_box_rounded),
                color: Colors.deepPurple,
              ),
            ],
        title: const Text('Terms & Conditions'),
        centerTitle: true,
      ),
      backgroundColor: Colors.deepPurpleAccent,
      body: const Center(
        child: Text('T E R M S - & - C O N D I T I O N S'),
      ),
    );
  }
}
