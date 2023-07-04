import 'package:brew_crew/pages/deposit.dart';
import 'package:brew_crew/screens/wrapper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

  void _showPrivacyPolicy(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Privacy Policy',
            style: GoogleFonts.oswald(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          content: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 600, // Set a maximum height for the content
                maxWidth: 100, // Set a maximum width for the content
              ),
              child: Privacy(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: Text(
                'Accept',
                style: GoogleFonts.oswald(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        );
      },
    );
  }




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
                Text(
                  'CREDIT',
                  style: GoogleFonts.oswald(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                Text(
                  '\$0.00',
                  style: GoogleFonts.oswald(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 15),

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
                title: Text(
                  'Request Withdrawal',
                  style: GoogleFonts.oswald(
                    fontSize: 20,
                    color: Colors.black,
                  ),
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
            title: Text(
              'Transaction History',
              style: GoogleFonts.oswald(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const History(),
              ));
            },
            ),
            const SizedBox(height: 10),
                ListTile(
                  leading: const Icon(Icons.privacy_tip_outlined),
                  title: Text(
                    'Privacy Policy',
                    style: GoogleFonts.oswald(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    _showPrivacyPolicy(context); // Show the privacy policy in a popup
                  },
                ),
            const SizedBox(height: 10),
            ListTile(
            leading: const Icon(Icons.handshake_outlined),
            title: Text(
              'Terms & Conditions',
              style: GoogleFonts.oswald(
                fontSize: 20,
                color: Colors.black,
              ),
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
            title: Text(
              'Profile Settings',
              style: GoogleFonts.oswald(
                fontSize: 20,
                color: Colors.black,
              ),
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
            title: Text(
              'Help & FAQ',
              style: GoogleFonts.oswald(
                fontSize: 20,
                color: Colors.black,
              ),
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
            title: Text(
            'Logout',
              style: GoogleFonts.oswald(
                fontSize: 20,
                color: Colors.black,
              ),
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
