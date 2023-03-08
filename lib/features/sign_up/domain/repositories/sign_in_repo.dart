import 'package:dartz/dartz.dart';
import 'package:inteligent_forms/core/errors/failures.dart';

abstract class SignInRepo {
  Future<Either<Failure, void>> signUp({
    required String name,
    required String type,
    required String emailAddress,
    required String password,
    required String? fiscalCode,
    required String address,
    required String subscriptionType,
  });

  Future<Either<Failure, void>> login({
    required String email,
    required String password,
  });
}
