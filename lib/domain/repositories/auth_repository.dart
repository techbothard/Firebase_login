import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<User> signUpWithEmail(String email, String password);
  Future<User> signInWithEmail(String email, String password);
  Future<void> signOut();
  User? getCurrentUser();
  Stream<User?> authStateChanges();
}
