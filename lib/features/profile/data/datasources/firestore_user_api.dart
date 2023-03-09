import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/constants/firestore_constants.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../authentication/data/models/user_model.dart';

class FirestoreUserApi {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  //update user
  Future<void> updateUser({
    required UserModel userModel,
  }) async {
    try {
      await _firebaseFirestore
          .collection(AppFirestoreCollectionNames.users)
          .doc(userModel.userId)
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
}
