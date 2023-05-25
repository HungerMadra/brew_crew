import 'package:brew_crew/services/auth.dart';
import 'package:brew_crew/services/my_buttons.dart';
import 'package:brew_crew/services/square_tile.dart';
import 'package:brew_crew/services/text_fields.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatefulWidget {
  final VoidCallback showRegisterPage;
  SignIn({Key? key, required this.showRegisterPage}) : super(key: key);

  //Text editing controllers  

final emailController = TextEditingController();
final passWordController = TextEditingController();


  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

// Instance of Auth Service 
final AuthService _auth = AuthService();
final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  void dispose() {
    // Call dispose on the text editing controllers
    widget.emailController.dispose();
    widget.passWordController.dispose();
    super.dispose();
  }

@override
  Widget build(BuildContext context) {

    final Color? backgroundColor = Colors.grey[300]; // Nullable color value

    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.grey, // Use null-aware cascade operator
      body:  SafeArea(
        child: Center(
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
            //const SizedBox(height: 5),

            // logo 

              Image.asset(
            'lib/images/logo.png', // Replace with your actual image asset path
            width: 75,
            height: 75,
          ),
              const SizedBox(height: 25),
              
            //welcome back 

            Text(
              'Welcome back you\'ve been missed!',
              style: GoogleFonts.bebasNeue(
                color: Colors.grey.shade700,
                fontSize: 16,
              ),
                ),
                const SizedBox(height: 25),
              
            //username field

            MyTextField(
              controller: widget.emailController,
              hintText: 'Username',
              obscureText: false,
            ),
              
              const SizedBox(height: 15),
            // password

            MyTextField(
              controller: widget.passWordController,
              hintText: 'Password',
              obscureText: true,
            ),

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password?',
                    style: GoogleFonts.bebasNeue(
                color: Colors.grey.shade700,
                fontSize: 16,
              ),
              ),
                    
                  ],
                ),
              ),

              const SizedBox(height: 25),

            //sign-in

          MyButton(
          text: 'Sign In',
            onTap: () async { 
            await _auth.signInEmailPass(
             widget.emailController, widget.passWordController, context);
             },
                  ),

            const SizedBox(height: 25),
              
            //continue with 

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                    thickness: 0.5, color: Colors.grey.shade400,
                    ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text('Or continue with',style: GoogleFonts.bebasNeue(
                color: Colors.grey.shade700,
                fontSize: 16,
              ),
                    ),
                  ),
            
                  Expanded(
                    child: Divider(
                    thickness: 0.5, color: Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 5),
              
            //google and apple sign-in buttons

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () async {
                  try {
                    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
                    final GoogleSignInAuthentication googleAuth =
                        await googleUser!.authentication;

                    final AuthCredential credential = GoogleAuthProvider.credential(
                        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

                    await FirebaseAuth.instance.signInWithCredential(credential);
                  } catch (error) {
                    if (kDebugMode) {
                      print(error);
                    }
                  }
                },
                child: const SquareTile(imagePath: 'lib/images/google.png'),
              ),
              const SizedBox(width: 25),
              const SquareTile(imagePath: 'lib/images/apple.png'),
            ],
              ),



              //Not a member, Register 

              const SizedBox(height: 10),

              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const SizedBox(width: 10),
               Text('Not a member?',
              style: GoogleFonts.bebasNeue(
                color: Colors.grey.shade700,
                fontSize: 16,
              ),
              ),
              GestureDetector(
                onTap: widget.showRegisterPage,
                child: Text(' Register now!',
                style: GoogleFonts.bebasNeue(
                color: Colors.grey.shade700,
                fontSize: 16,
              ),
                ),
              ),
              ],
              ),
          ],),
        ),
      
      ),
    );
  }
}