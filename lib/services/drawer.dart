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
        color: Colors.deepPurple,
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
                    color: Colors.amberAccent,
                  ),
                ),
                const Text(
                  '\$0.00',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Deposit(),
                ));
                  },
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                ),
                  child: const Text('Deposit'),
                ),
              ],
            ),
          ),

            // List of clickable links 
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
      ),
    );
  }
}
