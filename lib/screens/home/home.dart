import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:brew_crew/services/auth.dart';
import '../../services/drawer.dart';
import '../../services/my_buttons.dart';

class Home extends StatefulWidget {
  // Added a named parameter key to the constructor
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();
  final user = FirebaseAuth.instance.currentUser!;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _logoutScaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,

      // Add a key to the Scaffold widget to reference it from another widget
      key: _scaffoldKey,

      // Add a Drawer widget to the Scaffold
      drawer: MyDrawer(
    scaffoldKey: _scaffoldKey,
    logoutScaffoldKey: _logoutScaffoldKey, // <-- add this line
  ),

      // Add a CustomScrollView widget to the body of the Scaffold
      body: CustomScrollView(
        slivers: [
          // Add a SliverAppBar widget to the CustomScrollView
      SliverAppBar.medium(
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
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.sports_basketball),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.sports_soccer),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.sports_martial_arts),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.sports_football),
            ),
          ),
        ],
      ),
    ),


          // Add a SizedBox widget to create space between the SliverAppBar and SliverToBoxAdapter
          const SliverToBoxAdapter(
            child: SizedBox(height: 50),
          ),

          // Add a SliverToBoxAdapter widget to the CustomScrollView
          SliverToBoxAdapter(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Show the current user's email address
                  Text('LOGGED IN AS ${user.email!}'),
                  const SizedBox(height: 500),
                  // Add a custom button to sign the user out
                  MyButton(
                    text: 'Sign Out',
                    onTap: () {
                      _auth.signUserOut();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}