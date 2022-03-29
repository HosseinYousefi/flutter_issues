// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repo_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RepoFailureTearOff {
  const _$RepoFailureTearOff();

  _ServerException serverException({required String message}) {
    return _ServerException(
      message: message,
    );
  }

  _General general({String message = 'General Error'}) {
    return _General(
      message: message,
    );
  }
}

/// @nodoc
const $RepoFailure = _$RepoFailureTearOff();

/// @nodoc
mixin _$RepoFailure {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message) general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message)? general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message)? general,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_General value) general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_General value)? general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_General value)? general,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoFailureCopyWith<RepoFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoFailureCopyWith<$Res> {
  factory $RepoFailureCopyWith(
          RepoFailure value, $Res Function(RepoFailure) then) =
      _$RepoFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$RepoFailureCopyWithImpl<$Res> implements $RepoFailureCopyWith<$Res> {
  _$RepoFailureCopyWithImpl(this._value, this._then);

  final RepoFailure _value;
  // ignore: unused_field
  final $Res Function(RepoFailure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ServerExceptionCopyWith<$Res>
    implements $RepoFailureCopyWith<$Res> {
  factory _$ServerExceptionCopyWith(
          _ServerException value, $Res Function(_ServerException) then) =
      __$ServerExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$ServerExceptionCopyWithImpl<$Res>
    extends _$RepoFailureCopyWithImpl<$Res>
    implements _$ServerExceptionCopyWith<$Res> {
  __$ServerExceptionCopyWithImpl(
      _ServerException _value, $Res Function(_ServerException) _then)
      : super(_value, (v) => _then(v as _ServerException));

  @override
  _ServerException get _value => super._value as _ServerException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ServerException(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerException implements _ServerException {
  const _$_ServerException({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RepoFailure.serverException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServerException &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ServerExceptionCopyWith<_ServerException> get copyWith =>
      __$ServerExceptionCopyWithImpl<_ServerException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message) general,
  }) {
    return serverException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message)? general,
  }) {
    return serverException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message)? general,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_General value) general,
  }) {
    return serverException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_General value)? general,
  }) {
    return serverException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_General value)? general,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(this);
    }
    return orElse();
  }
}

abstract class _ServerException implements RepoFailure {
  const factory _ServerException({required String message}) =
      _$_ServerException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$ServerExceptionCopyWith<_ServerException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GeneralCopyWith<$Res> implements $RepoFailureCopyWith<$Res> {
  factory _$GeneralCopyWith(_General value, $Res Function(_General) then) =
      __$GeneralCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$GeneralCopyWithImpl<$Res> extends _$RepoFailureCopyWithImpl<$Res>
    implements _$GeneralCopyWith<$Res> {
  __$GeneralCopyWithImpl(_General _value, $Res Function(_General) _then)
      : super(_value, (v) => _then(v as _General));

  @override
  _General get _value => super._value as _General;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_General(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_General implements _General {
  const _$_General({this.message = 'General Error'});

  @JsonKey()
  @override
  final String message;

  @override
  String toString() {
    return 'RepoFailure.general(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _General &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$GeneralCopyWith<_General> get copyWith =>
      __$GeneralCopyWithImpl<_General>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message) general,
  }) {
    return general(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message)? general,
  }) {
    return general?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message)? general,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_General value) general,
  }) {
    return general(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_General value)? general,
  }) {
    return general?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_General value)? general,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(this);
    }
    return orElse();
  }
}

abstract class _General implements RepoFailure {
  const factory _General({String message}) = _$_General;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$GeneralCopyWith<_General> get copyWith =>
      throw _privateConstructorUsedError;
}
