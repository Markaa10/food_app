import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_app/domain/auth/auth_failure.dart';
import 'package:food_app/domain/auth/user.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required String username,
    @required String email,
    @required String phone,
    @required String password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required String email,
    @required String password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
