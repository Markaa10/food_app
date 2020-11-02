// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_up_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignUpFormEventTearOff {
  const _$SignUpFormEventTearOff();

// ignore: unused_element
  _UsernameChanged usernameChanged(String usernameStr) {
    return _UsernameChanged(
      usernameStr,
    );
  }

// ignore: unused_element
  _EmailChanged emailChanged(String emailAddressStr) {
    return _EmailChanged(
      emailAddressStr,
    );
  }

// ignore: unused_element
  _PhoneChanged phoneChanged(String phoneStr) {
    return _PhoneChanged(
      phoneStr,
    );
  }

// ignore: unused_element
  _PasswordChanged passwordChanged(String passwordStr) {
    return _PasswordChanged(
      passwordStr,
    );
  }

// ignore: unused_element
  _SignUpWithEmailAndPasswordPressed signUpWithEmailAndPasswordPressed() {
    return const _SignUpWithEmailAndPasswordPressed();
  }

// ignore: unused_element
  _SignUpWithGooglePressed signUpWithGooglePressed() {
    return const _SignUpWithGooglePressed();
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpFormEvent = _$SignUpFormEventTearOff();

/// @nodoc
mixin _$SignUpFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String usernameStr),
    @required Result emailChanged(String emailAddressStr),
    @required Result phoneChanged(String phoneStr),
    @required Result passwordChanged(String passwordStr),
    @required Result signUpWithEmailAndPasswordPressed(),
    @required Result signUpWithGooglePressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String usernameStr),
    Result emailChanged(String emailAddressStr),
    Result phoneChanged(String phoneStr),
    Result passwordChanged(String passwordStr),
    Result signUpWithEmailAndPasswordPressed(),
    Result signUpWithGooglePressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChanged(_UsernameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result phoneChanged(_PhoneChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required
        Result signUpWithEmailAndPasswordPressed(
            _SignUpWithEmailAndPasswordPressed value),
    @required Result signUpWithGooglePressed(_SignUpWithGooglePressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(_UsernameChanged value),
    Result emailChanged(_EmailChanged value),
    Result phoneChanged(_PhoneChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result signUpWithEmailAndPasswordPressed(
        _SignUpWithEmailAndPasswordPressed value),
    Result signUpWithGooglePressed(_SignUpWithGooglePressed value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SignUpFormEventCopyWith<$Res> {
  factory $SignUpFormEventCopyWith(
          SignUpFormEvent value, $Res Function(SignUpFormEvent) then) =
      _$SignUpFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpFormEventCopyWithImpl<$Res>
    implements $SignUpFormEventCopyWith<$Res> {
  _$SignUpFormEventCopyWithImpl(this._value, this._then);

  final SignUpFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpFormEvent) _then;
}

/// @nodoc
abstract class _$UsernameChangedCopyWith<$Res> {
  factory _$UsernameChangedCopyWith(
          _UsernameChanged value, $Res Function(_UsernameChanged) then) =
      __$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String usernameStr});
}

/// @nodoc
class __$UsernameChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$UsernameChangedCopyWith<$Res> {
  __$UsernameChangedCopyWithImpl(
      _UsernameChanged _value, $Res Function(_UsernameChanged) _then)
      : super(_value, (v) => _then(v as _UsernameChanged));

  @override
  _UsernameChanged get _value => super._value as _UsernameChanged;

  @override
  $Res call({
    Object usernameStr = freezed,
  }) {
    return _then(_UsernameChanged(
      usernameStr == freezed ? _value.usernameStr : usernameStr as String,
    ));
  }
}

/// @nodoc
class _$_UsernameChanged implements _UsernameChanged {
  const _$_UsernameChanged(this.usernameStr) : assert(usernameStr != null);

  @override
  final String usernameStr;

  @override
  String toString() {
    return 'SignUpFormEvent.usernameChanged(usernameStr: $usernameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsernameChanged &&
            (identical(other.usernameStr, usernameStr) ||
                const DeepCollectionEquality()
                    .equals(other.usernameStr, usernameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(usernameStr);

  @override
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      __$UsernameChangedCopyWithImpl<_UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String usernameStr),
    @required Result emailChanged(String emailAddressStr),
    @required Result phoneChanged(String phoneStr),
    @required Result passwordChanged(String passwordStr),
    @required Result signUpWithEmailAndPasswordPressed(),
    @required Result signUpWithGooglePressed(),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmailAndPasswordPressed != null);
    assert(signUpWithGooglePressed != null);
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String usernameStr),
    Result emailChanged(String emailAddressStr),
    Result phoneChanged(String phoneStr),
    Result passwordChanged(String passwordStr),
    Result signUpWithEmailAndPasswordPressed(),
    Result signUpWithGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChanged(_UsernameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result phoneChanged(_PhoneChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required
        Result signUpWithEmailAndPasswordPressed(
            _SignUpWithEmailAndPasswordPressed value),
    @required Result signUpWithGooglePressed(_SignUpWithGooglePressed value),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmailAndPasswordPressed != null);
    assert(signUpWithGooglePressed != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(_UsernameChanged value),
    Result emailChanged(_EmailChanged value),
    Result phoneChanged(_PhoneChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result signUpWithEmailAndPasswordPressed(
        _SignUpWithEmailAndPasswordPressed value),
    Result signUpWithGooglePressed(_SignUpWithGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements SignUpFormEvent {
  const factory _UsernameChanged(String usernameStr) = _$_UsernameChanged;

  String get usernameStr;
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailAddressStr});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object emailAddressStr = freezed,
  }) {
    return _then(_EmailChanged(
      emailAddressStr == freezed
          ? _value.emailAddressStr
          : emailAddressStr as String,
    ));
  }
}

/// @nodoc
class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.emailAddressStr) : assert(emailAddressStr != null);

  @override
  final String emailAddressStr;

  @override
  String toString() {
    return 'SignUpFormEvent.emailChanged(emailAddressStr: $emailAddressStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.emailAddressStr, emailAddressStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddressStr, emailAddressStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddressStr);

  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String usernameStr),
    @required Result emailChanged(String emailAddressStr),
    @required Result phoneChanged(String phoneStr),
    @required Result passwordChanged(String passwordStr),
    @required Result signUpWithEmailAndPasswordPressed(),
    @required Result signUpWithGooglePressed(),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmailAndPasswordPressed != null);
    assert(signUpWithGooglePressed != null);
    return emailChanged(emailAddressStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String usernameStr),
    Result emailChanged(String emailAddressStr),
    Result phoneChanged(String phoneStr),
    Result passwordChanged(String passwordStr),
    Result signUpWithEmailAndPasswordPressed(),
    Result signUpWithGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailAddressStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChanged(_UsernameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result phoneChanged(_PhoneChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required
        Result signUpWithEmailAndPasswordPressed(
            _SignUpWithEmailAndPasswordPressed value),
    @required Result signUpWithGooglePressed(_SignUpWithGooglePressed value),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmailAndPasswordPressed != null);
    assert(signUpWithGooglePressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(_UsernameChanged value),
    Result emailChanged(_EmailChanged value),
    Result phoneChanged(_PhoneChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result signUpWithEmailAndPasswordPressed(
        _SignUpWithEmailAndPasswordPressed value),
    Result signUpWithGooglePressed(_SignUpWithGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignUpFormEvent {
  const factory _EmailChanged(String emailAddressStr) = _$_EmailChanged;

  String get emailAddressStr;
  _$EmailChangedCopyWith<_EmailChanged> get copyWith;
}

/// @nodoc
abstract class _$PhoneChangedCopyWith<$Res> {
  factory _$PhoneChangedCopyWith(
          _PhoneChanged value, $Res Function(_PhoneChanged) then) =
      __$PhoneChangedCopyWithImpl<$Res>;
  $Res call({String phoneStr});
}

/// @nodoc
class __$PhoneChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$PhoneChangedCopyWith<$Res> {
  __$PhoneChangedCopyWithImpl(
      _PhoneChanged _value, $Res Function(_PhoneChanged) _then)
      : super(_value, (v) => _then(v as _PhoneChanged));

  @override
  _PhoneChanged get _value => super._value as _PhoneChanged;

  @override
  $Res call({
    Object phoneStr = freezed,
  }) {
    return _then(_PhoneChanged(
      phoneStr == freezed ? _value.phoneStr : phoneStr as String,
    ));
  }
}

/// @nodoc
class _$_PhoneChanged implements _PhoneChanged {
  const _$_PhoneChanged(this.phoneStr) : assert(phoneStr != null);

  @override
  final String phoneStr;

  @override
  String toString() {
    return 'SignUpFormEvent.phoneChanged(phoneStr: $phoneStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneChanged &&
            (identical(other.phoneStr, phoneStr) ||
                const DeepCollectionEquality()
                    .equals(other.phoneStr, phoneStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneStr);

  @override
  _$PhoneChangedCopyWith<_PhoneChanged> get copyWith =>
      __$PhoneChangedCopyWithImpl<_PhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String usernameStr),
    @required Result emailChanged(String emailAddressStr),
    @required Result phoneChanged(String phoneStr),
    @required Result passwordChanged(String passwordStr),
    @required Result signUpWithEmailAndPasswordPressed(),
    @required Result signUpWithGooglePressed(),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmailAndPasswordPressed != null);
    assert(signUpWithGooglePressed != null);
    return phoneChanged(phoneStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String usernameStr),
    Result emailChanged(String emailAddressStr),
    Result phoneChanged(String phoneStr),
    Result passwordChanged(String passwordStr),
    Result signUpWithEmailAndPasswordPressed(),
    Result signUpWithGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneChanged != null) {
      return phoneChanged(phoneStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChanged(_UsernameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result phoneChanged(_PhoneChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required
        Result signUpWithEmailAndPasswordPressed(
            _SignUpWithEmailAndPasswordPressed value),
    @required Result signUpWithGooglePressed(_SignUpWithGooglePressed value),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmailAndPasswordPressed != null);
    assert(signUpWithGooglePressed != null);
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(_UsernameChanged value),
    Result emailChanged(_EmailChanged value),
    Result phoneChanged(_PhoneChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result signUpWithEmailAndPasswordPressed(
        _SignUpWithEmailAndPasswordPressed value),
    Result signUpWithGooglePressed(_SignUpWithGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneChanged implements SignUpFormEvent {
  const factory _PhoneChanged(String phoneStr) = _$_PhoneChanged;

  String get phoneStr;
  _$PhoneChangedCopyWith<_PhoneChanged> get copyWith;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(_PasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

/// @nodoc
class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'SignUpFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String usernameStr),
    @required Result emailChanged(String emailAddressStr),
    @required Result phoneChanged(String phoneStr),
    @required Result passwordChanged(String passwordStr),
    @required Result signUpWithEmailAndPasswordPressed(),
    @required Result signUpWithGooglePressed(),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmailAndPasswordPressed != null);
    assert(signUpWithGooglePressed != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String usernameStr),
    Result emailChanged(String emailAddressStr),
    Result phoneChanged(String phoneStr),
    Result passwordChanged(String passwordStr),
    Result signUpWithEmailAndPasswordPressed(),
    Result signUpWithGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChanged(_UsernameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result phoneChanged(_PhoneChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required
        Result signUpWithEmailAndPasswordPressed(
            _SignUpWithEmailAndPasswordPressed value),
    @required Result signUpWithGooglePressed(_SignUpWithGooglePressed value),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmailAndPasswordPressed != null);
    assert(signUpWithGooglePressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(_UsernameChanged value),
    Result emailChanged(_EmailChanged value),
    Result phoneChanged(_PhoneChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result signUpWithEmailAndPasswordPressed(
        _SignUpWithEmailAndPasswordPressed value),
    Result signUpWithGooglePressed(_SignUpWithGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignUpFormEvent {
  const factory _PasswordChanged(String passwordStr) = _$_PasswordChanged;

  String get passwordStr;
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith;
}

/// @nodoc
abstract class _$SignUpWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$SignUpWithEmailAndPasswordPressedCopyWith(
          _SignUpWithEmailAndPasswordPressed value,
          $Res Function(_SignUpWithEmailAndPasswordPressed) then) =
      __$SignUpWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignUpWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$SignUpWithEmailAndPasswordPressedCopyWith<$Res> {
  __$SignUpWithEmailAndPasswordPressedCopyWithImpl(
      _SignUpWithEmailAndPasswordPressed _value,
      $Res Function(_SignUpWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _SignUpWithEmailAndPasswordPressed));

  @override
  _SignUpWithEmailAndPasswordPressed get _value =>
      super._value as _SignUpWithEmailAndPasswordPressed;
}

/// @nodoc
class _$_SignUpWithEmailAndPasswordPressed
    implements _SignUpWithEmailAndPasswordPressed {
  const _$_SignUpWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignUpFormEvent.signUpWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String usernameStr),
    @required Result emailChanged(String emailAddressStr),
    @required Result phoneChanged(String phoneStr),
    @required Result passwordChanged(String passwordStr),
    @required Result signUpWithEmailAndPasswordPressed(),
    @required Result signUpWithGooglePressed(),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmailAndPasswordPressed != null);
    assert(signUpWithGooglePressed != null);
    return signUpWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String usernameStr),
    Result emailChanged(String emailAddressStr),
    Result phoneChanged(String phoneStr),
    Result passwordChanged(String passwordStr),
    Result signUpWithEmailAndPasswordPressed(),
    Result signUpWithGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signUpWithEmailAndPasswordPressed != null) {
      return signUpWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChanged(_UsernameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result phoneChanged(_PhoneChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required
        Result signUpWithEmailAndPasswordPressed(
            _SignUpWithEmailAndPasswordPressed value),
    @required Result signUpWithGooglePressed(_SignUpWithGooglePressed value),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmailAndPasswordPressed != null);
    assert(signUpWithGooglePressed != null);
    return signUpWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(_UsernameChanged value),
    Result emailChanged(_EmailChanged value),
    Result phoneChanged(_PhoneChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result signUpWithEmailAndPasswordPressed(
        _SignUpWithEmailAndPasswordPressed value),
    Result signUpWithGooglePressed(_SignUpWithGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signUpWithEmailAndPasswordPressed != null) {
      return signUpWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _SignUpWithEmailAndPasswordPressed implements SignUpFormEvent {
  const factory _SignUpWithEmailAndPasswordPressed() =
      _$_SignUpWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class _$SignUpWithGooglePressedCopyWith<$Res> {
  factory _$SignUpWithGooglePressedCopyWith(_SignUpWithGooglePressed value,
          $Res Function(_SignUpWithGooglePressed) then) =
      __$SignUpWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignUpWithGooglePressedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements _$SignUpWithGooglePressedCopyWith<$Res> {
  __$SignUpWithGooglePressedCopyWithImpl(_SignUpWithGooglePressed _value,
      $Res Function(_SignUpWithGooglePressed) _then)
      : super(_value, (v) => _then(v as _SignUpWithGooglePressed));

  @override
  _SignUpWithGooglePressed get _value =>
      super._value as _SignUpWithGooglePressed;
}

/// @nodoc
class _$_SignUpWithGooglePressed implements _SignUpWithGooglePressed {
  const _$_SignUpWithGooglePressed();

  @override
  String toString() {
    return 'SignUpFormEvent.signUpWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignUpWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result usernameChanged(String usernameStr),
    @required Result emailChanged(String emailAddressStr),
    @required Result phoneChanged(String phoneStr),
    @required Result passwordChanged(String passwordStr),
    @required Result signUpWithEmailAndPasswordPressed(),
    @required Result signUpWithGooglePressed(),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmailAndPasswordPressed != null);
    assert(signUpWithGooglePressed != null);
    return signUpWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result usernameChanged(String usernameStr),
    Result emailChanged(String emailAddressStr),
    Result phoneChanged(String phoneStr),
    Result passwordChanged(String passwordStr),
    Result signUpWithEmailAndPasswordPressed(),
    Result signUpWithGooglePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signUpWithGooglePressed != null) {
      return signUpWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result usernameChanged(_UsernameChanged value),
    @required Result emailChanged(_EmailChanged value),
    @required Result phoneChanged(_PhoneChanged value),
    @required Result passwordChanged(_PasswordChanged value),
    @required
        Result signUpWithEmailAndPasswordPressed(
            _SignUpWithEmailAndPasswordPressed value),
    @required Result signUpWithGooglePressed(_SignUpWithGooglePressed value),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneChanged != null);
    assert(passwordChanged != null);
    assert(signUpWithEmailAndPasswordPressed != null);
    assert(signUpWithGooglePressed != null);
    return signUpWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result usernameChanged(_UsernameChanged value),
    Result emailChanged(_EmailChanged value),
    Result phoneChanged(_PhoneChanged value),
    Result passwordChanged(_PasswordChanged value),
    Result signUpWithEmailAndPasswordPressed(
        _SignUpWithEmailAndPasswordPressed value),
    Result signUpWithGooglePressed(_SignUpWithGooglePressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signUpWithGooglePressed != null) {
      return signUpWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class _SignUpWithGooglePressed implements SignUpFormEvent {
  const factory _SignUpWithGooglePressed() = _$_SignUpWithGooglePressed;
}

/// @nodoc
class _$SignUpFormStateTearOff {
  const _$SignUpFormStateTearOff();

// ignore: unused_element
  _SignUpFormState call(
      {@required String username,
      @required String emailAddress,
      @required String password,
      @required String phone,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignUpFormState(
      username: username,
      emailAddress: emailAddress,
      password: password,
      phone: phone,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpFormState = _$SignUpFormStateTearOff();

/// @nodoc
mixin _$SignUpFormState {
  String get username;
  String get emailAddress;
  String get password;
  String get phone;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  $SignUpFormStateCopyWith<SignUpFormState> get copyWith;
}

/// @nodoc
abstract class $SignUpFormStateCopyWith<$Res> {
  factory $SignUpFormStateCopyWith(
          SignUpFormState value, $Res Function(SignUpFormState) then) =
      _$SignUpFormStateCopyWithImpl<$Res>;
  $Res call(
      {String username,
      String emailAddress,
      String password,
      String phone,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignUpFormStateCopyWithImpl<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  _$SignUpFormStateCopyWithImpl(this._value, this._then);

  final SignUpFormState _value;
  // ignore: unused_field
  final $Res Function(SignUpFormState) _then;

  @override
  $Res call({
    Object username = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object phone = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      phone: phone == freezed ? _value.phone : phone as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignUpFormStateCopyWith<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  factory _$SignUpFormStateCopyWith(
          _SignUpFormState value, $Res Function(_SignUpFormState) then) =
      __$SignUpFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String username,
      String emailAddress,
      String password,
      String phone,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignUpFormStateCopyWithImpl<$Res>
    extends _$SignUpFormStateCopyWithImpl<$Res>
    implements _$SignUpFormStateCopyWith<$Res> {
  __$SignUpFormStateCopyWithImpl(
      _SignUpFormState _value, $Res Function(_SignUpFormState) _then)
      : super(_value, (v) => _then(v as _SignUpFormState));

  @override
  _SignUpFormState get _value => super._value as _SignUpFormState;

  @override
  $Res call({
    Object username = freezed,
    Object emailAddress = freezed,
    Object password = freezed,
    Object phone = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignUpFormState(
      username: username == freezed ? _value.username : username as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
      password: password == freezed ? _value.password : password as String,
      phone: phone == freezed ? _value.phone : phone as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_SignUpFormState implements _SignUpFormState {
  const _$_SignUpFormState(
      {@required this.username,
      @required this.emailAddress,
      @required this.password,
      @required this.phone,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(username != null),
        assert(emailAddress != null),
        assert(password != null),
        assert(phone != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final String username;
  @override
  final String emailAddress;
  @override
  final String password;
  @override
  final String phone;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignUpFormState(username: $username, emailAddress: $emailAddress, password: $password, phone: $phone, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpFormState &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith =>
      __$SignUpFormStateCopyWithImpl<_SignUpFormState>(this, _$identity);
}

abstract class _SignUpFormState implements SignUpFormState {
  const factory _SignUpFormState(
          {@required
              String username,
          @required
              String emailAddress,
          @required
              String password,
          @required
              String phone,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_SignUpFormState;

  @override
  String get username;
  @override
  String get emailAddress;
  @override
  String get password;
  @override
  String get phone;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith;
}
