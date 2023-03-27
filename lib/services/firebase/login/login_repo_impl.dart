// ignore_for_file: library_prefixes

import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as FirebaseAuth;
import 'package:google_sign_in/google_sign_in.dart' as GoogleSignIn;
import '../../../app/error/failures.dart';
import '../../../models/login/user.dart';
import 'login_repo.dart';

class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<Either<Failure, User>> loginFacebook() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> loginGoogle() async {
    try {
      final googleUser = await GoogleSignIn.GoogleSignIn().signIn();

      if (googleUser == null) return Left(ServerFailure());

      final googleAuth = await googleUser.authentication;
      final authCredential = FirebaseAuth.GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.FirebaseAuth.instance
          .signInWithCredential(authCredential);

      final user = FirebaseAuth.FirebaseAuth.instance.currentUser;

      if (user == null) return Left(ServerFailure());
      return Right(
        User(
          customerId: user.uid,
          firstName: user.displayName != null
              ? user.displayName!.split(' ').first
              : '',
          lastName:
              user.displayName != null ? user.displayName!.split(' ')[1] : '',
          email: user.email,
        ),
      );
    } catch (e) {
      log(e.toString());
      throw ServerFailure();
    }
  }

  @override
  Future<Either<Failure, User>> loginAnonymous() async {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> loginApple() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> loginEmail() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> loginPhone() {
    throw UnimplementedError();
  }
}

/*
User(displayName: Plex Ring, email: plexringapp@gmail.com, emailVerified: true, isAnonymous: false, metadata: UserMetadata(creationTime: 2023-03-27 08:19:25.783Z, lastSignInTime: 2023-03-27 08:28:18.551Z), phoneNumber: null, photoURL: https://lh3.googleusercontent.com/a/AGNmyxZwJh2C_bGkZ7zVresqg6TD_yOPQMsrNW9L8tyg=s96-c, providerData, [UserInfo(displayName: Plex Ring, email: plexringapp@gmail.com, phoneNumber: null, photoURL: https://lh3.googleusercontent.com/a/AGNmyxZwJh2C_bGkZ7zVresqg6TD_yOPQMsrNW9L8tyg=s96-c, providerId: google.com, uid: 103178785413348239236)], refreshToken: , tenantId: null, uid: dW7S0oGT5DUm3PrBQ5BuXnT639z2)
*/