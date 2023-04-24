import 'package:brew_crew/services/auth.dart';
import 'package:brew_crew/services/my_buttons.dart';
import 'package:brew_crew/services/square_tile.dart';
import 'package:brew_crew/services/text_fields.dart';
import 'package:flutter/material.dart';
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

              const Icon(Icons.temple_hindu_rounded,
              size: 50,
              ),
              const SizedBox(height: 25),
              
            //welcome back 

            Text(
              'Welcome back you\'ve been missed!',
              style: TextStyle(
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
              
              const SizedBox(height: 5),
            // password

            MyTextField(
              controller: widget.passWordController,
              hintText: 'Password',
              obscureText: true,
            ),

              const SizedBox(height: 10),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password?'),
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
                    child: Text('Or continue with',
                    style: TextStyle(color: Colors.grey.shade700),
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
                    print(error);
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
              const Text('Not a member?'),
              GestureDetector(
                onTap: widget.showRegisterPage,
                child: const Text(' Register now!',
                style: TextStyle(color: Colors.blue, 
                fontWeight: FontWeight.bold 
                ),
                ),
              ),
              ],),
          ],),
        ),
      
      ),
    );
  }
}