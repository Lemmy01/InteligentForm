// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:inteligent_forms/features/authentication/domain/validators/autentication_validators.dart';

import '../../../../core/errors/failures.dart';
import '../repositories/authentication _repo.dart';

class AuthenticationUsecase {
  AuthenticationValidator authenticationValidator;
  AuthenticationRepo authenticationRepo;

  AuthenticationUsecase({
    required this.authenticationValidator,
    required this.authenticationRepo,
  });

  Future<Either<Failure, void>> signUp({
    required String name,
    required String type,
    required String emailAddress,
    required String password,
    required String? fiscalCode,
    required String address,
  }) async {
    final Either<Failure, void> areSignUpInformationValid =
        authenticationValidator.areSignUpInformationValid(
      emailAddress: emailAddress,
      password: password,
      confirmPassword: password,
      fiscalCode: fiscalCode,
    );

    if (areSignUpInformationValid.isLeft()) {
      return areSignUpInformationValid;
    }

    return authenticationRepo.signUp(
      name: name,
      type: type,
      emailAddress: emailAddress,
      password: password,
      fiscalCode: fiscalCode,
      address: address,
    );
  }
}
