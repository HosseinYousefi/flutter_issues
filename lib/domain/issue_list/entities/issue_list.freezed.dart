// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'issue_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IssueListTearOff {
  const _$IssueListTearOff();

  _IssueList call(
      {required List<IssueListItem> issues, required PageInfo pageInfo}) {
    return _IssueList(
      issues: issues,
      pageInfo: pageInfo,
    );
  }
}

/// @nodoc
const $IssueList = _$IssueListTearOff();

/// @nodoc
mixin _$IssueList {
  List<IssueListItem> get issues => throw _privateConstructorUsedError;
  PageInfo get pageInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IssueListCopyWith<IssueList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueListCopyWith<$Res> {
  factory $IssueListCopyWith(IssueList value, $Res Function(IssueList) then) =
      _$IssueListCopyWithImpl<$Res>;
  $Res call({List<IssueListItem> issues, PageInfo pageInfo});

  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$IssueListCopyWithImpl<$Res> implements $IssueListCopyWith<$Res> {
  _$IssueListCopyWithImpl(this._value, this._then);

  final IssueList _value;
  // ignore: unused_field
  final $Res Function(IssueList) _then;

  @override
  $Res call({
    Object? issues = freezed,
    Object? pageInfo = freezed,
  }) {
    return _then(_value.copyWith(
      issues: issues == freezed
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<IssueListItem>,
      pageInfo: pageInfo == freezed
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
    ));
  }

  @override
  $PageInfoCopyWith<$Res> get pageInfo {
    return $PageInfoCopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value));
    });
  }
}

/// @nodoc
abstract class _$IssueListCopyWith<$Res> implements $IssueListCopyWith<$Res> {
  factory _$IssueListCopyWith(
          _IssueList value, $Res Function(_IssueList) then) =
      __$IssueListCopyWithImpl<$Res>;
  @override
  $Res call({List<IssueListItem> issues, PageInfo pageInfo});

  @override
  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$IssueListCopyWithImpl<$Res> extends _$IssueListCopyWithImpl<$Res>
    implements _$IssueListCopyWith<$Res> {
  __$IssueListCopyWithImpl(_IssueList _value, $Res Function(_IssueList) _then)
      : super(_value, (v) => _then(v as _IssueList));

  @override
  _IssueList get _value => super._value as _IssueList;

  @override
  $Res call({
    Object? issues = freezed,
    Object? pageInfo = freezed,
  }) {
    return _then(_IssueList(
      issues: issues == freezed
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<IssueListItem>,
      pageInfo: pageInfo == freezed
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
    ));
  }
}

/// @nodoc

class _$_IssueList implements _IssueList {
  const _$_IssueList({required this.issues, required this.pageInfo});

  @override
  final List<IssueListItem> issues;
  @override
  final PageInfo pageInfo;

  @override
  String toString() {
    return 'IssueList(issues: $issues, pageInfo: $pageInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IssueList &&
            const DeepCollectionEquality().equals(other.issues, issues) &&
            const DeepCollectionEquality().equals(other.pageInfo, pageInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(issues),
      const DeepCollectionEquality().hash(pageInfo));

  @JsonKey(ignore: true)
  @override
  _$IssueListCopyWith<_IssueList> get copyWith =>
      __$IssueListCopyWithImpl<_IssueList>(this, _$identity);
}

abstract class _IssueList implements IssueList {
  const factory _IssueList(
      {required List<IssueListItem> issues,
      required PageInfo pageInfo}) = _$_IssueList;

  @override
  List<IssueListItem> get issues;
  @override
  PageInfo get pageInfo;
  @override
  @JsonKey(ignore: true)
  _$IssueListCopyWith<_IssueList> get copyWith =>
      throw _privateConstructorUsedError;
}
