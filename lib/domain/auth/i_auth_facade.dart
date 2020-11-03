import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_app/domain/auth/auth_failure.dart';
import 'package:food_app/domain/auth/user.dart';
import 'package:food_app/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required Username username,
    @required EmailAddress emailAddress,
    @required Phone phone,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
