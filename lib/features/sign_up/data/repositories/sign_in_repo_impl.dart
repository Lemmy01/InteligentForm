import 'package:dartz/dartz.dart';
import 'package:inteligent_forms/core/errors/exceptions.dart';
import 'package:inteligent_forms/core/errors/failures.dart';
import 'package:inteligent_forms/core/utils/logger.dart';
import 'package:inteligent_forms/features/sign_up/data/datasources/remote/sign_in_firestore_api.dart';
import 'package:inteligent_forms/features/sign_up/domain/repositories/sign_in_repo.dart';

import '../../../../core/constants/string_constants.dart';

class SignInRepoImpl extends SignInRepo {
  final _signInFirestoreApi = SignInFirestoreApi();

  @override
  Future<Either<Failure, void>> login(
      {required String email, required String password}) async {
    try {
      await _signInFirestoreApi.login(
        email: email,
        password: password,
      );

      return const Right(null);
    } on AppException catch (e) {
      return Left(
        HardFailure(
          failureMessage: e.message,
        ),
      );
    } on Exception catch (e) {
      Logger.error(runtimeType, e.toString());

      return const Left(
        HardFailure(
          failureMessage: AppStringFailures.unexpectedFailure,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, void>> signUp(
      {required String name,
      required String type,
      required String emailAddress,
      required String password,
      required String? fiscalCode,
      required String address,
      required String subscriptionType}) async {
    try {
      await _signInFirestoreApi.signUp(
        name: name,
        type: type,
        emailAddress: emailAddress,
        password: password,
        fiscalCode: fiscalCode,
        address: address,
        subscriptionType: subscriptionType,
      );

      return const Right(null);
    } on AppException catch (e) {
      return Left(
        HardFailure(
          failureMessage: e.message,
        ),
      );
    } on Exception catch (e) {
      Logger.error(runtimeType, e.toString());

      return const Left(
        HardFailure(
          failureMessage: AppStringFailures.unexpectedFailure,
        ),
      );
    }
  }
}
