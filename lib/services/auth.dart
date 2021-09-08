import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebasetesting/models/person.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Person? _personFromFirebaseUser (User user){
    return user != null ? Person(uid: user.uid): null;
  }
/*
  Stream<User>? get user {
    return _auth.authStateChanges
      .map(User user) => _personFromFirebaseUser(person);

  }

 */



  User? get currentUser {
    if (_auth.currentUser != null) {
      print( currentUser);
      print('hej');
      return currentUser!;
    }

    return null;
  }


/*
  // auth change user stream
  Stream<Person> get user {
    return _auth.currentUser!
    //.map((FirebaseUser user) => _userFromFirebaseUser(user));
        .map(_userFromFirebaseUser);
  }

 */

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