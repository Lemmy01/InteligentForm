import 'package:dartz/dartz.dart';
import 'package:inteligent_forms/core/errors/failures.dart';
import 'package:inteligent_forms/features/forms/domain/entities/form_entity.dart';

class FormsUseCase {
  Future<Either<Failure, List<FormEntity>>> getForms() async {
    //TODO George Luta : implement this vasi
    await Future.delayed(const Duration(seconds: 2));
    return Right([
      //dummy list of FormEntity
      FormEntity(
        title: 'Title',
        dynamicFieldNames: [
          'test1 ',
          'test2 ',
          'test3 ',
          'test4 ',
          'test5 ',
          'test6 ',
        ],
        dateAdded: DateTime(2022),
      ),
      FormEntity(
        title: 'Title',
        dynamicFieldNames: [
          'test1 ',
          'test2 ',
          'test3 ',
          'test4 ',
          'test5 ',
          'test6 ',
        ],
        dateAdded: DateTime(2022),
      ),
      FormEntity(
        title: 'Title',
        dynamicFieldNames: [
          'test1 ',
          'test2 ',
          'test3 ',
          'test4 ',
          'test5 ',
          'test6 ',
        ],
        dateAdded: DateTime(2022),
      ),
      FormEntity(
        title: 'Title',
        dynamicFieldNames: [
          'test1 ',
          'test2 ',
          'test3 ',
          'test4 ',
          'test5 ',
          'test6 ',
        ],
        dateAdded: DateTime(2022),
      ),
      FormEntity(
        title: 'Title',
        dynamicFieldNames: [
          'test1 ',
          'test2 ',
          'test3 ',
          'test4 ',
          'test5 ',
          'test6 ',
        ],
        dateAdded: DateTime(2022),
      ),
      FormEntity(
        title: 'Title',
        dynamicFieldNames: [
          'test1 ',
          'test2 ',
          'test3 ',
          'test4 ',
          'test5 ',
          'test6 ',
        ],
        dateAdded: DateTime(2022),
      ),
      FormEntity(
        title: 'Title',
        dynamicFieldNames: [
          'test1 ',
          'test2 ',
          'test3 ',
          'test4 ',
          'test5 ',
          'test6 ',
        ],
        dateAdded: DateTime(2022),
      ),
      FormEntity(
        title: 'Title',
        dynamicFieldNames: [
          'test1 ',
          'test2 ',
          'test3 ',
          'test4 ',
          'test5 ',
          'test6 ',
        ],
        dateAdded: DateTime(2022),
      ),
    ]);
  }
}
