import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebasetesting/main.dart';
import 'package:firebasetesting/models/person.dart';


class AuthService{

   FirebaseAuth _auth = FirebaseAuth.instance;

  Person? _personFromFirebaseUser (User user){
    return user != null ? Person(uid: user.uid): null;
  }

   Stream<User?> get currentUser {
     return FirebaseAuth.instance.authStateChanges().map((User? user){
       return user != null ? user : null;
     });
   }

  //sign in anonymously
  Future signInAnon () async {
    try{
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _personFromFirebaseUser(user!);
  } catch(e){
      print(e.toString());
      return null;
    }
  }

  //sign in with email and password

  //register with email and pw

  //sign out
}