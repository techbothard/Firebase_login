import 'package:firebase_auth/firebase_auth.dart';


import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;

  AuthRepositoryImpl(this._remoteDataSource);

  @override
  Future<User> signUpWithEmail(String email, String password) async {
    final userCredential = await _remoteDataSource.signUpWithEmail(email, password);
    return userCredential.user!;
  }

  @override
  Future<User> signInWithEmail(String email, String password) async {
    final userCredential = await _remoteDataSource.signInWithEmail(email, password);
    return userCredential.user!;
  }

  @override
  Future<void> signOut() async {
    await _remoteDataSource.signOut();
  }

  @override
  User? getCurrentUser() {
    return _remoteDataSource.getCurrentUser();
  }

  @override
  Stream<User?> authStateChanges() {
    return _remoteDataSource.authStateChanges();
  }
}
