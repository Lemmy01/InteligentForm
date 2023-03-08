import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inteligent_forms/features/fill_form/domain/entities/form.dart';
import 'package:inteligent_forms/features/fill_form/domain/repositories/create_form_reposetory.dart';
import 'package:inteligent_forms/features/fill_form/domain/usecases/create_form.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'create_form_test.mocks.dart';

@GenerateNiceMocks([MockSpec<CreateFormRepository>()])
void main() {
  late CreateForm usecase;
  late MockCreateFormRepository mockCreateFormRepo;

  setUp(() {
    mockCreateFormRepo = MockCreateFormRepository();
    usecase = CreateForm(mockCreateFormRepo);
  });
  final Form tForm = Form(dataRetenrionPeriod: 30, title: 'Test');
  test(
    'should get trivia for the number from the repository',
    () async {
      // "On the fly" implementation of the Repository using the Mockito package.
      // When getConcreteNumberTrivia is called with any argument, always answer with
      // the Right "side" of Either containing a test NumberTrivia object.
      when(mockCreateFormRepo.createForm())
          .thenAnswer((realInvocation) async => const Right(null));

      // The "act" phase of the test. Call the not-yet-existent method.
      final result = await usecase(form: tForm);
      // UseCase should simply return whatever was returned from the Repository
      expect(result, const Right(null));
      // Verify that the method has been called on the Repository
      verify(mockCreateFormRepo.createForm());
      // Only the above method should be called and nothing more.
      verifyNoMoreInteractions(mockCreateFormRepo);
    },
  );
}
