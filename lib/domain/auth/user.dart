import 'package:food_app/domain/auth/value_objects.dart';
import 'package:food_app/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required UniqueId id,
    Username userName,
    EmailAddress email,
    Phone phone,
  }) = _User;
}
