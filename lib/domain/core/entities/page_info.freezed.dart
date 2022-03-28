// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'page_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PageInfoTearOff {
  const _$PageInfoTearOff();

  _PageInfo call({required PageStatus status, required String endCursor}) {
    return _PageInfo(
      status: status,
      endCursor: endCursor,
    );
  }
}

/// @nodoc
const $PageInfo = _$PageInfoTearOff();

/// @nodoc
mixin _$PageInfo {
  PageStatus get status => throw _privateConstructorUsedError;
  String get endCursor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageInfoCopyWith<PageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageInfoCopyWith<$Res> {
  factory $PageInfoCopyWith(PageInfo value, $Res Function(PageInfo) then) =
      _$PageInfoCopyWithImpl<$Res>;
  $Res call({PageStatus status, String endCursor});

  $PageStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$PageInfoCopyWithImpl<$Res> implements $PageInfoCopyWith<$Res> {
  _$PageInfoCopyWithImpl(this._value, this._then);

  final PageInfo _value;
  // ignore: unused_field
  final $Res Function(PageInfo) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? endCursor = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PageStatus,
      endCursor: endCursor == freezed
          ? _value.endCursor
          : endCursor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $PageStatusCopyWith<$Res> get status {
    return $PageStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$PageInfoCopyWith<$Res> implements $PageInfoCopyWith<$Res> {
  factory _$PageInfoCopyWith(_PageInfo value, $Res Function(_PageInfo) then) =
      __$PageInfoCopyWithImpl<$Res>;
  @override
  $Res call({PageStatus status, String endCursor});

  @override
  $PageStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$PageInfoCopyWithImpl<$Res> extends _$PageInfoCopyWithImpl<$Res>
    implements _$PageInfoCopyWith<$Res> {
  __$PageInfoCopyWithImpl(_PageInfo _value, $Res Function(_PageInfo) _then)
      : super(_value, (v) => _then(v as _PageInfo));

  @override
  _PageInfo get _value => super._value as _PageInfo;

  @override
  $Res call({
    Object? status = freezed,
    Object? endCursor = freezed,
  }) {
    return _then(_PageInfo(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PageStatus,
      endCursor: endCursor == freezed
          ? _value.endCursor
          : endCursor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PageInfo implements _PageInfo {
  const _$_PageInfo({required this.status, required this.endCursor});

  @override
  final PageStatus status;
  @override
  final String endCursor;

  @override
  String toString() {
    return 'PageInfo(status: $status, endCursor: $endCursor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PageInfo &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.endCursor, endCursor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(endCursor));

  @JsonKey(ignore: true)
  @override
  _$PageInfoCopyWith<_PageInfo> get copyWith =>
      __$PageInfoCopyWithImpl<_PageInfo>(this, _$identity);
}

abstract class _PageInfo implements PageInfo {
  const factory _PageInfo(
      {required PageStatus status, required String endCursor}) = _$_PageInfo;

  @override
  PageStatus get status;
  @override
  String get endCursor;
  @override
  @JsonKey(ignore: true)
  _$PageInfoCopyWith<_PageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
