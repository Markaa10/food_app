import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:food_app/domain/auth/user.dart';
import 'package:food_app/domain/auth/value_objects.dart';
import 'package:food_app/domain/core/value_objects.dart';

extension FirebaseUserDomainX on auth.User {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
      userName: Username(''),
      email: EmailAddress(''),
      phone: Phone(''),
    );
  }
}
