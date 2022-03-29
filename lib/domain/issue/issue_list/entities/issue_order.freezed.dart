// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'issue_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IssueOrderTearOff {
  const _$IssueOrderTearOff();

  _CreatedAt createdAt(SortDirection sortDirection) {
    return _CreatedAt(
      sortDirection,
    );
  }
}

/// @nodoc
const $IssueOrder = _$IssueOrderTearOff();

/// @nodoc
mixin _$IssueOrder {
  SortDirection get sortDirection => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SortDirection sortDirection) createdAt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SortDirection sortDirection)? createdAt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SortDirection sortDirection)? createdAt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatedAt value) createdAt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreatedAt value)? createdAt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatedAt value)? createdAt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IssueOrderCopyWith<IssueOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueOrderCopyWith<$Res> {
  factory $IssueOrderCopyWith(
          IssueOrder value, $Res Function(IssueOrder) then) =
      _$IssueOrderCopyWithImpl<$Res>;
  $Res call({SortDirection sortDirection});
}

/// @nodoc
class _$IssueOrderCopyWithImpl<$Res> implements $IssueOrderCopyWith<$Res> {
  _$IssueOrderCopyWithImpl(this._value, this._then);

  final IssueOrder _value;
  // ignore: unused_field
  final $Res Function(IssueOrder) _then;

  @override
  $Res call({
    Object? sortDirection = freezed,
  }) {
    return _then(_value.copyWith(
      sortDirection: sortDirection == freezed
          ? _value.sortDirection
          : sortDirection // ignore: cast_nullable_to_non_nullable
              as SortDirection,
    ));
  }
}

/// @nodoc
abstract class _$CreatedAtCopyWith<$Res> implements $IssueOrderCopyWith<$Res> {
  factory _$CreatedAtCopyWith(
          _CreatedAt value, $Res Function(_CreatedAt) then) =
      __$CreatedAtCopyWithImpl<$Res>;
  @override
  $Res call({SortDirection sortDirection});
}

/// @nodoc
class __$CreatedAtCopyWithImpl<$Res> extends _$IssueOrderCopyWithImpl<$Res>
    implements _$CreatedAtCopyWith<$Res> {
  __$CreatedAtCopyWithImpl(_CreatedAt _value, $Res Function(_CreatedAt) _then)
      : super(_value, (v) => _then(v as _CreatedAt));

  @override
  _CreatedAt get _value => super._value as _CreatedAt;

  @override
  $Res call({
    Object? sortDirection = freezed,
  }) {
    return _then(_CreatedAt(
      sortDirection == freezed
          ? _value.sortDirection
          : sortDirection // ignore: cast_nullable_to_non_nullable
              as SortDirection,
    ));
  }
}

/// @nodoc

class _$_CreatedAt implements _CreatedAt {
  const _$_CreatedAt(this.sortDirection);

  @override
  final SortDirection sortDirection;

  @override
  String toString() {
    return 'IssueOrder.createdAt(sortDirection: $sortDirection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatedAt &&
            const DeepCollectionEquality()
                .equals(other.sortDirection, sortDirection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sortDirection));

  @JsonKey(ignore: true)
  @override
  _$CreatedAtCopyWith<_CreatedAt> get copyWith =>
      __$CreatedAtCopyWithImpl<_CreatedAt>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SortDirection sortDirection) createdAt,
  }) {
    return createdAt(sortDirection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SortDirection sortDirection)? createdAt,
  }) {
    return createdAt?.call(sortDirection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SortDirection sortDirection)? createdAt,
    required TResult orElse(),
  }) {
    if (createdAt != null) {
      return createdAt(sortDirection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreatedAt value) createdAt,
  }) {
    return createdAt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CreatedAt value)? createdAt,
  }) {
    return createdAt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreatedAt value)? createdAt,
    required TResult orElse(),
  }) {
    if (createdAt != null) {
      return createdAt(this);
    }
    return orElse();
  }
}

abstract class _CreatedAt implements IssueOrder {
  const factory _CreatedAt(SortDirection sortDirection) = _$_CreatedAt;

  @override
  SortDirection get sortDirection;
  @override
  @JsonKey(ignore: true)
  _$CreatedAtCopyWith<_CreatedAt> get copyWith =>
      throw _privateConstructorUsedError;
}
