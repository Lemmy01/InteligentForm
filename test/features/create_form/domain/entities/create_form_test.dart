import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inteligent_forms/core/helper_class/section_with_field_list_class.dart';
import 'package:inteligent_forms/features/create_form/domain/repositories/create_form_repository.dart';
import 'package:inteligent_forms/features/create_form/domain/usecases/create_form.dart';
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
  const tTitle = "test";
  int tDataRetentionPeriod = 1;
  List<SectionWithList> tSections = [
    SectionWithList(
      content: 'content',
      scanType: 'scanType',
      sectionNumber: 3,
    )
  ];
  test(
    'should call the repository to create a form',
    () async {
      when(mockCreateFormRepo.createForm(any, any, any))
          .thenAnswer((realInvocation) async => const Right(null));

      final result = await usecase(
        title: tTitle,
        dataRetentionPeriod: tDataRetentionPeriod,
        sections: tSections,
      );

      expect(result, const Right(null));

      verify(
        mockCreateFormRepo.createForm(
          tTitle,
          tDataRetentionPeriod,
          tSections,
        ),
      );

      verifyNoMoreInteractions(mockCreateFormRepo);
    },
  );
}
