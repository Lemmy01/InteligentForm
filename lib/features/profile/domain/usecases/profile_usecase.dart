import 'package:dartz/dartz.dart';
import 'package:inteligent_forms/core/errors/failures.dart';
import 'package:inteligent_forms/features/profile/domain/entities/profile_entity.dart';

class ProfileUsecase {
  Future<Either<Failure, ProfileEntity>> getProfileEntity() async {
    Future.delayed(const Duration(seconds: 2));

    return Right(
      ProfileEntity(
        name: 'name',
        email: 'email',
        accountType: 'accountType',
        address: 'address',
        fiscalCode: '',
      ),
    );
  }
}
