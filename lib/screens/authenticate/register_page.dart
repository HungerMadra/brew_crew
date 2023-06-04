import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:brew_crew/services/my_buttons.dart';
import 'package:brew_crew/services/square_tile.dart';
import 'package:brew_crew/services/text_fields.dart';
import 'package:google_fonts/google_fonts.dart';


class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  RegisterPage ({Key? key, required this.showLoginPage}) : super(key: key);

  //Text editing controllers  

final emailController = TextEditingController();
final passWordController = TextEditingController();
final confirmPassWordController = TextEditingController();

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

    @override
  void dispose() {
    // Call dispose on the text editing controllers
    widget.emailController.dispose();
    widget.passWordController.dispose();
    widget.confirmPassWordController.dispose();
    super.dispose();
  }

//confirm password 

  bool passwordConfirmed(){
    if (widget.confirmPassWordController.text.trim() == widget.passWordController.text.trim()){
        return true;
    }
    else {
      return false;
    }
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300, // Use null-aware cascade operator
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
              'Register below with your details!',
              style: GoogleFonts.oswald(
                color: Colors.grey.shade700,
                fontSize: 16,
              ),
                ),
                const SizedBox(height: 10),
              
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

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                ),
              ),

              const SizedBox(height: 5),

              // Confirm password

            MyTextField(
              controller: widget.confirmPassWordController,
              hintText: 'Confirm Password',
              obscureText: true,
            ),

            const SizedBox(height: 30),

            //sign-up
              MyButton(
                text: 'Sign Up',
                onTap: () async {
                  if (passwordConfirmed()) {
                    try {
                      await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: widget.emailController.text.trim(),
                        password: widget.passWordController.text.trim(),
                      );
                      // Show a snackbar or navigate to the home page upon successful sign up
                    } catch (e) {
                      // Handle sign up errors
                      if (kDebugMode) {
                        print('Error occurred while signing up: $e');
                      }
                    }
                  } else {
                    // Password is not confirmed, show an error message
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Password confirmation error'),
                          content: const Text('The passwords do not match. Please confirm your password.'),
                          actions: [
                            TextButton(
                              child: const Text('OK'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
              ),

            const SizedBox(height: 10),
              
            //continue with 

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                    thickness: 0.5, color: Colors.grey.shade900,
                    ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text('Or continue with',
                    style: GoogleFonts.oswald(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                 ),
                    ),
                  ),
            
                  Expanded(
                    child: Divider(
                    thickness: 0.5, color: Colors.grey.shade900,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 5),
              
            //google and apple sign-in buttons

             const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //google button
                SquareTile(imagePath: 'lib/images/google.png'),

                SizedBox(width: 25),
                
                //apple button
                SquareTile(imagePath: 'lib/images/apple.png'),
              ],),

              //I am a member, Login

              const SizedBox(height: 30),

              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Created an account?',
              style: GoogleFonts.oswald(
                color: Colors.grey.shade700,
                fontSize: 16,
              ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: widget.showLoginPage,
                child: Text('Login now!',
                style: GoogleFonts.oswald(
                color: Colors.blue,
                fontSize: 16,
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