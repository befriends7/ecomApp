
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

GoogleSignIn _googleSignIn = GoogleSignIn();

class authService
{

  Future<User> authGogl() async
  {
    User user;
    FirebaseApp defaultApp = await Firebase.initializeApp();
    FirebaseAuth _auth = FirebaseAuth.instanceFor(app: defaultApp);

    bool isSignedIn = await _googleSignIn.isSignedIn();

    if (isSignedIn) {
      // if so, return the current user
      user = _auth.currentUser!;
    }

    else
      {
        final GoogleSignInAccount? googleUser =
        await _googleSignIn.signIn();

        final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

        final AuthCredential credential =
        GoogleAuthProvider.credential(accessToken: googleAuth.accessToken,
            idToken: googleAuth.idToken);

        user = (await _auth.signInWithCredential(credential)).user!;

      }

    return user;

  }

}