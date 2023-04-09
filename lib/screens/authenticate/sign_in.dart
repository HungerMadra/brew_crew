import 'package:brew_crew/services/my_buttons.dart';
import 'package:brew_crew/services/square_tile.dart';
import 'package:brew_crew/services/text_fields.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

final userNameController = TextEditingController();
final passWordController = TextEditingController();

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
              
            const SizedBox(height: 50),

            // logo 

              const Icon(Icons.coffee,
              size: 100,
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
              controller: userNameController,
              hintText: 'Username',
              obscureText: false,
            ),
              
              const SizedBox(height: 5),
            // password

            MyTextField(
              controller: userNameController,
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
              onTap: () => null,
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

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //google button
                SquareTile(imagePath: 'lib/images/google.png'),

                SizedBox(width: 25),
                
                //apple button
                SquareTile(imagePath: 'lib/images/apple.png'),
              ],),

              //Not a member, Register 

              const SizedBox(height: 10),

              const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text('Not a member?'),
              SizedBox(width: 10),
              Text('Register now!',
              style: TextStyle(color: Colors.blue, 
              fontWeight: FontWeight.bold 
              ),
              ),
              ],),
          ],),
        ),
      ),
    );
  }
}