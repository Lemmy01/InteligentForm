// Mocks generated by Mockito 5.3.2 from annotations
// in inteligent_forms/test/features/create_form/data/repositories/create_form_repository_impl_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:inteligent_forms/core/helper_class/section_with_field_list_class.dart'
    as _i4;
import 'package:inteligent_forms/features/create_form/data/datasources/create_form_api.dart'
    as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [CreateFormApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockCreateFormApi extends _i1.Mock implements _i2.CreateFormApi {
  @override
  _i3.Future<void> createForm(
    String? title,
    int? dataRetentionPeriod,
    List<_i4.SectionWithList>? sections,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #createForm,
          [
            title,
            dataRetentionPeriod,
            sections,
          ],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
}
