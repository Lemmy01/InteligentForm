import 'package:firebase_auth/firebase_auth.dart';
import 'package:inteligent_forms/core/errors/exceptions.dart';
import 'package:inteligent_forms/features/profile/data/datasources/firestore_user_api.dart';

import '../../models/user_model.dart';

class AuthenticationFirestoreApi {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> signUp({
    required String name,
    required String type,
    required String emailAddress,
    required String password,
    required String? fiscalCode,
    required String address,
  }) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );

      UserModel userModel = UserModel(
        userId: userCredential.user!.uid,
        name: name,
        accountType: type,
        emailAddress: emailAddress,
        fiscalCode: fiscalCode,
        address: address,
      );

      await FirestoreUserApi().updateUser(userModel: userModel);
    } on FirebaseAuthException catch (error) {
      throw MediumException(
        runtimeType,
        error.toString(),
      );
    } on FirebaseException catch (error) {
      throw MediumException(
        runtimeType,
        error.toString(),
      );
    }
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (error) {
      throw MediumException(
        runtimeType,
        error.toString(),
      );
    }
  }

  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }
}
