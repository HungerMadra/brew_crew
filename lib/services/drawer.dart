import 'package:brew_crew/pages/deposit.dart';
import 'package:brew_crew/screens/wrapper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../pages/help.dart';
import '../pages/history.dart';
import '../pages/privacy.dart';
import '../pages/settings.dart';
import '../pages/terms.dart';
import '../pages/withdrawal.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'my_buttons.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final GlobalKey<ScaffoldState> logoutScaffoldKey; // <-- add this line

  const MyDrawer({
    Key? key,
    required this.scaffoldKey,
    required this.logoutScaffoldKey, // <-- add this line
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey[300],
        child: ListView(
          children: [
            DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'CREDIT',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  '\$0.00',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                MyButton(
                  text: 'DEPOSIT',
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Deposit(),
                    ));
                  },
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.symmetric(horizontal: 60),
                  fontSize: 20,
                  color: Colors.green,
                ),
              ],
            ),
          ),



            // List of clickable links
            Column(
              children: [
              ListTile(
                leading: const Icon(Icons.monetization_on_outlined),
                title: const Text(
                  'Request Withdrawal',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Withdraw(),
                  ));
                },
              ),

            const SizedBox(height: 10),
            ListTile(
            leading: const Icon(Icons.history),
            title: const Text(
              'Transaction History',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => History(),
              ));
            },
            ),
            const SizedBox(height: 10),
            ListTile(
            leading: const Icon(Icons.privacy_tip_outlined),
            title: const Text(
              'Privacy Policy',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Privacy(),
              ));
            },
            ),
            const SizedBox(height: 10),
            ListTile(
            leading: const Icon(Icons.handshake_outlined),
            title: const Text(
              'Terms & Conditions',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Terms(),
              ));
            },
            ),
            const SizedBox(height: 10),
            ListTile(
            leading: const Icon(Icons.person_2_outlined),
            title: const Text(
              'Profile Settings',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Settings(),
              ));
            },
            ),
            const SizedBox(height: 10),
            ListTile(
            leading: const Icon(Icons.help_outline_outlined),
            title: const Text(
              'Help & FAQ',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Help(),
              ));
            },
            ),
            const SizedBox(height: 10),
           ListTile(
            leading: const Icon(Icons.logout_rounded),
            title: const Text(
            'Logout',
            style: TextStyle(fontSize: 20),
            ),
            onTap: () async {
            try {
              await FirebaseAuth.instance.signOut();
              Navigator.popUntil(scaffoldKey.currentContext!, (route) => route.isFirst); // Close all screens and return to the first screen
              Navigator.pushReplacement(
                scaffoldKey.currentContext!,
                MaterialPageRoute(builder: (context) => Wrapper()),
              ); // Navigate to the Authenticate screen
            } catch (e) {
              if (kDebugMode) {
                print('Error logging out: $e');
              }
              // Display an error message to the user or handle the error in another way.
            }
            },
            key: const Key('logout_key'),
          ),
      ],
    ),

          ],
        ),
      ),
    );
  }
}
