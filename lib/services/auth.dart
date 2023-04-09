import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Logger _logger = Logger();

  // method for anonymous sign-in

  Future<User?> signInAnon() async{

    try {

      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;

    } catch(e){
         _logger.e('Error: $e');
        return null;
    }
  }
    

  // method for email/password sign-in


  // method for register with email and password 


  // method for sign-out
}