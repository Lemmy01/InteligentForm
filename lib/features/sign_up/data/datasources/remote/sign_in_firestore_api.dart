import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:inteligent_forms/core/errors/exceptions.dart';
import 'package:inteligent_forms/features/sign_up/data/models/user_model.dart';

class SignInFirestoreApi {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<void> signUp({
    required String name,
    required String type,
    required String emailAddress,
    required String password,
    required String? fiscalCode,
    required String address,
    required String subscriptionType,
  }) async {
    try {
      final userCredential = _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );

      UserModel userModel = UserModel(
        name: name,
        accountType: type,
        emailAddress: emailAddress,
        fiscalCode: fiscalCode,
        address: address,
        subscriptionType: subscriptionType,
      );
    } on FirebaseAuthException catch (error) {
      throw MediumException(
        runtimeType,
        error.toString(),
      );
    }
  }

  //update user
  Future<void> updateUser({
    required UserModel userModel,
  }) async {
    try {
      await _firebaseFirestore
          .collection('users')
          .doc(userModel.emailAddress)
          .set(
            userModel.toMap(),
          );

          
    } on FirebaseException catch (error) {
      throw MediumException(
        runtimeType,
        error.toString(),
      );
    }
  }

  //delete user

  //get user
}
