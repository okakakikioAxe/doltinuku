import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Users {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  get user => _auth.currentUser;

  //signUp with email
  Future emailSignUp({String? email, String? password, String? name}) async {
    try {
      //create user auth
      UserCredential result = await _auth.createUserWithEmailAndPassword(
        email: email!,
        password: password!,
      );
      User user = result.user!;

      //add displayName
      await user.updateDisplayName(name);

      //create document
      String uniqueCode = FirebaseAuth.instance.currentUser!.uid;
      DocumentReference userReference =
          FirebaseFirestore.instance.doc("users/" + uniqueCode);
      Map<String, String> data = {"nama": name!, "status_member": "basic"};
      userReference.set(data);

      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //sign in with email
  Future emailSignIn({String? email, String? password}) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: email!, password: password!);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //SIGN OUT METHOD
  Future signOut() async {
    await _auth.signOut();

    print('signout');
  }
}
