// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'issue_label.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IssueLabelTearOff {
  const _$IssueLabelTearOff();

  _IssueLabel call({required String title, required Color color}) {
    return _IssueLabel(
      title: title,
      color: color,
    );
  }
}

/// @nodoc
const $IssueLabel = _$IssueLabelTearOff();

/// @nodoc
mixin _$IssueLabel {
  String get title => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IssueLabelCopyWith<IssueLabel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueLabelCopyWith<$Res> {
  factory $IssueLabelCopyWith(
          IssueLabel value, $Res Function(IssueLabel) then) =
      _$IssueLabelCopyWithImpl<$Res>;
  $Res call({String title, Color color});
}

/// @nodoc
class _$IssueLabelCopyWithImpl<$Res> implements $IssueLabelCopyWith<$Res> {
  _$IssueLabelCopyWithImpl(this._value, this._then);

  final IssueLabel _value;
  // ignore: unused_field
  final $Res Function(IssueLabel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
abstract class _$IssueLabelCopyWith<$Res> implements $IssueLabelCopyWith<$Res> {
  factory _$IssueLabelCopyWith(
          _IssueLabel value, $Res Function(_IssueLabel) then) =
      __$IssueLabelCopyWithImpl<$Res>;
  @override
  $Res call({String title, Color color});
}

/// @nodoc
class __$IssueLabelCopyWithImpl<$Res> extends _$IssueLabelCopyWithImpl<$Res>
    implements _$IssueLabelCopyWith<$Res> {
  __$IssueLabelCopyWithImpl(
      _IssueLabel _value, $Res Function(_IssueLabel) _then)
      : super(_value, (v) => _then(v as _IssueLabel));

  @override
  _IssueLabel get _value => super._value as _IssueLabel;

  @override
  $Res call({
    Object? title = freezed,
    Object? color = freezed,
  }) {
    return _then(_IssueLabel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_IssueLabel implements _IssueLabel {
  const _$_IssueLabel({required this.title, required this.color});

  @override
  final String title;
  @override
  final Color color;

  @override
  String toString() {
    return 'IssueLabel(title: $title, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IssueLabel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$IssueLabelCopyWith<_IssueLabel> get copyWith =>
      __$IssueLabelCopyWithImpl<_IssueLabel>(this, _$identity);
}

abstract class _IssueLabel implements IssueLabel {
  const factory _IssueLabel({required String title, required Color color}) =
      _$_IssueLabel;

  @override
  String get title;
  @override
  Color get color;
  @override
  @JsonKey(ignore: true)
  _$IssueLabelCopyWith<_IssueLabel> get copyWith =>
      throw _privateConstructorUsedError;
}
