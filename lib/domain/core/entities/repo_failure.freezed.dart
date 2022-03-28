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

  _General general() {
    return const _General();
  }
}

/// @nodoc
const $RepoFailure = _$RepoFailureTearOff();

/// @nodoc
mixin _$RepoFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? general,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_General value) general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_General value)? general,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_General value)? general,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoFailureCopyWith<$Res> {
  factory $RepoFailureCopyWith(
          RepoFailure value, $Res Function(RepoFailure) then) =
      _$RepoFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$RepoFailureCopyWithImpl<$Res> implements $RepoFailureCopyWith<$Res> {
  _$RepoFailureCopyWithImpl(this._value, this._then);

  final RepoFailure _value;
  // ignore: unused_field
  final $Res Function(RepoFailure) _then;
}

/// @nodoc
abstract class _$GeneralCopyWith<$Res> {
  factory _$GeneralCopyWith(_General value, $Res Function(_General) then) =
      __$GeneralCopyWithImpl<$Res>;
}

/// @nodoc
class __$GeneralCopyWithImpl<$Res> extends _$RepoFailureCopyWithImpl<$Res>
    implements _$GeneralCopyWith<$Res> {
  __$GeneralCopyWithImpl(_General _value, $Res Function(_General) _then)
      : super(_value, (v) => _then(v as _General));

  @override
  _General get _value => super._value as _General;
}

/// @nodoc

class _$_General implements _General {
  const _$_General();

  @override
  String toString() {
    return 'RepoFailure.general()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _General);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() general,
  }) {
    return general();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? general,
  }) {
    return general?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? general,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_General value) general,
  }) {
    return general(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_General value)? general,
  }) {
    return general?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
  const factory _General() = _$_General;
}
