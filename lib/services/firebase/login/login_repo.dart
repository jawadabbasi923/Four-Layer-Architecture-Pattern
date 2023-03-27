import 'package:dartz/dartz.dart';

import '../../../app/error/failures.dart';
import '../../../models/login/user.dart';

abstract class LoginRepository {
  Future<Either<Failure, User>> loginGoogle();
  Future<Either<Failure, User>> loginFacebook();
  Future<Either<Failure, User>> loginApple();
  Future<Either<Failure, User>> loginPhone();
  Future<Either<Failure, User>> loginEmail();
  Future<Either<Failure, User>> loginAnonymous();
}
