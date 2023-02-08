import 'package:firebase_auth/firebase_auth.dart';

class AuthFirebase{
  final FirebaseAuth auth = FirebaseAuth.instance;

  Stream<User?> get user{
    return auth.authStateChanges();
  }

  void login(String email, String password) async{
   await auth.signInWithEmailAndPassword(email: email, password: password);
  }

  void register(String email, String password) async{
   await auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  void logout() async{
    await auth.signOut();
  }
}