// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'issue_list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IssueListItemTearOff {
  const _$IssueListItemTearOff();

  _IssueListItem call(
      {required String title,
      required int commentCount,
      required DateTime createdAt,
      required IList<IssueLabel> labels}) {
    return _IssueListItem(
      title: title,
      commentCount: commentCount,
      createdAt: createdAt,
      labels: labels,
    );
  }
}

/// @nodoc
const $IssueListItem = _$IssueListItemTearOff();

/// @nodoc
mixin _$IssueListItem {
  String get title => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  IList<IssueLabel> get labels => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IssueListItemCopyWith<IssueListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueListItemCopyWith<$Res> {
  factory $IssueListItemCopyWith(
          IssueListItem value, $Res Function(IssueListItem) then) =
      _$IssueListItemCopyWithImpl<$Res>;
  $Res call(
      {String title,
      int commentCount,
      DateTime createdAt,
      IList<IssueLabel> labels});
}

/// @nodoc
class _$IssueListItemCopyWithImpl<$Res>
    implements $IssueListItemCopyWith<$Res> {
  _$IssueListItemCopyWithImpl(this._value, this._then);

  final IssueListItem _value;
  // ignore: unused_field
  final $Res Function(IssueListItem) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? commentCount = freezed,
    Object? createdAt = freezed,
    Object? labels = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      labels: labels == freezed
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as IList<IssueLabel>,
    ));
  }
}

/// @nodoc
abstract class _$IssueListItemCopyWith<$Res>
    implements $IssueListItemCopyWith<$Res> {
  factory _$IssueListItemCopyWith(
          _IssueListItem value, $Res Function(_IssueListItem) then) =
      __$IssueListItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      int commentCount,
      DateTime createdAt,
      IList<IssueLabel> labels});
}

/// @nodoc
class __$IssueListItemCopyWithImpl<$Res>
    extends _$IssueListItemCopyWithImpl<$Res>
    implements _$IssueListItemCopyWith<$Res> {
  __$IssueListItemCopyWithImpl(
      _IssueListItem _value, $Res Function(_IssueListItem) _then)
      : super(_value, (v) => _then(v as _IssueListItem));

  @override
  _IssueListItem get _value => super._value as _IssueListItem;

  @override
  $Res call({
    Object? title = freezed,
    Object? commentCount = freezed,
    Object? createdAt = freezed,
    Object? labels = freezed,
  }) {
    return _then(_IssueListItem(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      commentCount: commentCount == freezed
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      labels: labels == freezed
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as IList<IssueLabel>,
    ));
  }
}

/// @nodoc

class _$_IssueListItem implements _IssueListItem {
  const _$_IssueListItem(
      {required this.title,
      required this.commentCount,
      required this.createdAt,
      required this.labels});

  @override
  final String title;
  @override
  final int commentCount;
  @override
  final DateTime createdAt;
  @override
  final IList<IssueLabel> labels;

  @override
  String toString() {
    return 'IssueListItem(title: $title, commentCount: $commentCount, createdAt: $createdAt, labels: $labels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IssueListItem &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.commentCount, commentCount) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.labels, labels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(commentCount),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(labels));

  @JsonKey(ignore: true)
  @override
  _$IssueListItemCopyWith<_IssueListItem> get copyWith =>
      __$IssueListItemCopyWithImpl<_IssueListItem>(this, _$identity);
}

abstract class _IssueListItem implements IssueListItem {
  const factory _IssueListItem(
      {required String title,
      required int commentCount,
      required DateTime createdAt,
      required IList<IssueLabel> labels}) = _$_IssueListItem;

  @override
  String get title;
  @override
  int get commentCount;
  @override
  DateTime get createdAt;
  @override
  IList<IssueLabel> get labels;
  @override
  @JsonKey(ignore: true)
  _$IssueListItemCopyWith<_IssueListItem> get copyWith =>
      throw _privateConstructorUsedError;
}
