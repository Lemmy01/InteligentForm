import 'package:inteligent_forms/features/fill_form/domain/repositories/fill_form_repository.dart';

class SubmitFormUsecase {
  final FillFormRepository repository;

  SubmitFormUsecase(this.repository);

  Future<void> call(
    String formId,
    String content,
    DateTime dateWhenSubmited,
    DateTime dateToBeDeleted,
  ) async {
    await repository.submitForm(
      formId,
      content,
      dateWhenSubmited,
      dateToBeDeleted,
    );
  }
}
