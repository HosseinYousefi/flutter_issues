// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFormStateTearOff {
  const _$AuthFormStateTearOff();

  _AuthFormState call({String token = '', bool hasError = false}) {
    return _AuthFormState(
      token: token,
      hasError: hasError,
    );
  }
}

/// @nodoc
const $AuthFormState = _$AuthFormStateTearOff();

/// @nodoc
mixin _$AuthFormState {
  String get token => throw _privateConstructorUsedError;

  /// Whether or not the token is entered correctly.
  ///
  /// Since we have only a single simple field a boolean suffices.
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFormStateCopyWith<AuthFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFormStateCopyWith<$Res> {
  factory $AuthFormStateCopyWith(
          AuthFormState value, $Res Function(AuthFormState) then) =
      _$AuthFormStateCopyWithImpl<$Res>;
  $Res call({String token, bool hasError});
}

/// @nodoc
class _$AuthFormStateCopyWithImpl<$Res>
    implements $AuthFormStateCopyWith<$Res> {
  _$AuthFormStateCopyWithImpl(this._value, this._then);

  final AuthFormState _value;
  // ignore: unused_field
  final $Res Function(AuthFormState) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AuthFormStateCopyWith<$Res>
    implements $AuthFormStateCopyWith<$Res> {
  factory _$AuthFormStateCopyWith(
          _AuthFormState value, $Res Function(_AuthFormState) then) =
      __$AuthFormStateCopyWithImpl<$Res>;
  @override
  $Res call({String token, bool hasError});
}

/// @nodoc
class __$AuthFormStateCopyWithImpl<$Res>
    extends _$AuthFormStateCopyWithImpl<$Res>
    implements _$AuthFormStateCopyWith<$Res> {
  __$AuthFormStateCopyWithImpl(
      _AuthFormState _value, $Res Function(_AuthFormState) _then)
      : super(_value, (v) => _then(v as _AuthFormState));

  @override
  _AuthFormState get _value => super._value as _AuthFormState;

  @override
  $Res call({
    Object? token = freezed,
    Object? hasError = freezed,
  }) {
    return _then(_AuthFormState(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthFormState implements _AuthFormState {
  const _$_AuthFormState({this.token = '', this.hasError = false});

  @JsonKey()
  @override
  final String token;
  @JsonKey()
  @override

  /// Whether or not the token is entered correctly.
  ///
  /// Since we have only a single simple field a boolean suffices.
  final bool hasError;

  @override
  String toString() {
    return 'AuthFormState(token: $token, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthFormState &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.hasError, hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(hasError));

  @JsonKey(ignore: true)
  @override
  _$AuthFormStateCopyWith<_AuthFormState> get copyWith =>
      __$AuthFormStateCopyWithImpl<_AuthFormState>(this, _$identity);
}

abstract class _AuthFormState implements AuthFormState {
  const factory _AuthFormState({String token, bool hasError}) =
      _$_AuthFormState;

  @override
  String get token;
  @override

  /// Whether or not the token is entered correctly.
  ///
  /// Since we have only a single simple field a boolean suffices.
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$AuthFormStateCopyWith<_AuthFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
