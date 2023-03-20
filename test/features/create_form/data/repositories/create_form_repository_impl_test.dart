import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inteligent_forms/features/create_form/data/datasources/create_form_api.dart';
import 'package:inteligent_forms/features/create_form/data/repositories/create_form_repository_impl.dart';
import 'package:inteligent_forms/features/create_form/domain/entities/field.dart';
import 'package:inteligent_forms/features/create_form/domain/entities/section.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'create_form_repository_impl_test.mocks.dart';

@GenerateNiceMocks([MockSpec<CreateFormApi>()])
void main() {
  late CreateFormRepositoryImpl mockCreateFormRepositoryImpl;
  late MockCreateFormApi mockCreateFormApi;
  setUp(() {
    mockCreateFormApi = MockCreateFormApi();
    mockCreateFormRepositoryImpl =
        CreateFormRepositoryImpl(api: mockCreateFormApi);
  });
  const tTitle = "test ";
  const tDataRetentionPeriod = 1;
  const List<Section> tSections = [];
  const List<Field> tFields = [];

  test('Should call the create Function from the CreateApi and return null',
      () async {
    // arrange
    when(mockCreateFormApi.createForm(any, any, any, any)).thenAnswer(
      (realInvocation) async => Void,
    );
    // act
    final result = await mockCreateFormRepositoryImpl.createForm(
      tTitle,
      tDataRetentionPeriod,
      tSections,
      tFields,
    );
    // assert

    expect(result, const Right(null));
    verify(mockCreateFormApi.createForm(
      tTitle,
      tDataRetentionPeriod,
      tSections,
      tFields,
    ));
    verifyNoMoreInteractions(mockCreateFormApi);
  });
}
