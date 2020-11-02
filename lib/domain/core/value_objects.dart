import 'package:dartz/dartz.dart';
import 'package:food_app/domain/core/failures.dart';
import 'package:uuid/uuid.dart';

class UniqueId {
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(Uuid().v1()),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return UniqueId._(
      right(uniqueId),
    );
  }

  const UniqueId._(this.value);
}
