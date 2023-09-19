import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  signInWithGoogle() async {
     final GoogleSignInAccount? user = await GoogleSignIn().signIn();


  }
}