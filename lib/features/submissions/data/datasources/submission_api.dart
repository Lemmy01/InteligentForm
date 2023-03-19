import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:inteligent_forms/features/submissions/data/models/submission_model.dart';

class SubmissionApi {
  final FirebaseFirestore _firestore;

  SubmissionApi(this._firestore);

  Future<void> submitSubmission(SubmissionModel submission) async {
    await _firestore.collection('submissions').add(
          submission.toMap(),
        );
  }

  Future<List<SubmissionModel>> getSubmissions(String formId) async {
    final snapshot = _firestore
        .collection('submissions')
        .where('formId', isEqualTo: formId)
        .orderBy('dateWhenSubmitted', descending: true)
        .snapshots();

    List<SubmissionModel> submissions = [];
    await for (var value in snapshot) {
      for (var doc in value.docs) {
        submissions.add(SubmissionModel.fromMap(doc.data()));
      }
    }
    return submissions;
  }

  Future<void> deleteSubmission(String id) async {
    await _firestore.collection('submissions').doc(id).delete();
  }

  Future<void> updateSubmission(SubmissionModel submission) async {
    await _firestore
        .collection('submissions')
        .doc(submission.id)
        .update(submission.toMap());
  }

  Future<SubmissionModel> getSubmission(String id) async {
    final snapshot = await _firestore.collection('submissions').doc(id).get();
    return SubmissionModel.fromMap(snapshot.data()!);
  }
}
