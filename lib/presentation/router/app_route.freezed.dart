// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppRouteTearOff {
  const _$AppRouteTearOff();

  HomeRoute home() {
    return const HomeRoute();
  }

  IssueDetailRoute issueDetail({required int number}) {
    return IssueDetailRoute(
      number: number,
    );
  }

  NotFoundRoute notFound() {
    return const NotFoundRoute();
  }
}

/// @nodoc
const $AppRoute = _$AppRouteTearOff();

/// @nodoc
mixin _$AppRoute {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(int number) issueDetail,
    required TResult Function() notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(int number)? issueDetail,
    TResult Function()? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(int number)? issueDetail,
    TResult Function()? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeRoute value) home,
    required TResult Function(IssueDetailRoute value) issueDetail,
    required TResult Function(NotFoundRoute value) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeRoute value)? home,
    TResult Function(IssueDetailRoute value)? issueDetail,
    TResult Function(NotFoundRoute value)? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeRoute value)? home,
    TResult Function(IssueDetailRoute value)? issueDetail,
    TResult Function(NotFoundRoute value)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppRouteCopyWith<$Res> {
  factory $AppRouteCopyWith(AppRoute value, $Res Function(AppRoute) then) =
      _$AppRouteCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppRouteCopyWithImpl<$Res> implements $AppRouteCopyWith<$Res> {
  _$AppRouteCopyWithImpl(this._value, this._then);

  final AppRoute _value;
  // ignore: unused_field
  final $Res Function(AppRoute) _then;
}

/// @nodoc
abstract class $HomeRouteCopyWith<$Res> {
  factory $HomeRouteCopyWith(HomeRoute value, $Res Function(HomeRoute) then) =
      _$HomeRouteCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeRouteCopyWithImpl<$Res> extends _$AppRouteCopyWithImpl<$Res>
    implements $HomeRouteCopyWith<$Res> {
  _$HomeRouteCopyWithImpl(HomeRoute _value, $Res Function(HomeRoute) _then)
      : super(_value, (v) => _then(v as HomeRoute));

  @override
  HomeRoute get _value => super._value as HomeRoute;
}

/// @nodoc

class _$HomeRoute extends HomeRoute {
  const _$HomeRoute() : super._();

  @override
  String toString() {
    return 'AppRoute.home()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeRoute);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(int number) issueDetail,
    required TResult Function() notFound,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(int number)? issueDetail,
    TResult Function()? notFound,
  }) {
    return home?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(int number)? issueDetail,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeRoute value) home,
    required TResult Function(IssueDetailRoute value) issueDetail,
    required TResult Function(NotFoundRoute value) notFound,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeRoute value)? home,
    TResult Function(IssueDetailRoute value)? issueDetail,
    TResult Function(NotFoundRoute value)? notFound,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeRoute value)? home,
    TResult Function(IssueDetailRoute value)? issueDetail,
    TResult Function(NotFoundRoute value)? notFound,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class HomeRoute extends AppRoute {
  const factory HomeRoute() = _$HomeRoute;
  const HomeRoute._() : super._();
}

/// @nodoc
abstract class $IssueDetailRouteCopyWith<$Res> {
  factory $IssueDetailRouteCopyWith(
          IssueDetailRoute value, $Res Function(IssueDetailRoute) then) =
      _$IssueDetailRouteCopyWithImpl<$Res>;
  $Res call({int number});
}

/// @nodoc
class _$IssueDetailRouteCopyWithImpl<$Res> extends _$AppRouteCopyWithImpl<$Res>
    implements $IssueDetailRouteCopyWith<$Res> {
  _$IssueDetailRouteCopyWithImpl(
      IssueDetailRoute _value, $Res Function(IssueDetailRoute) _then)
      : super(_value, (v) => _then(v as IssueDetailRoute));

  @override
  IssueDetailRoute get _value => super._value as IssueDetailRoute;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(IssueDetailRoute(
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IssueDetailRoute extends IssueDetailRoute {
  const _$IssueDetailRoute({required this.number}) : super._();

  @override
  final int number;

  @override
  String toString() {
    return 'AppRoute.issueDetail(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IssueDetailRoute &&
            const DeepCollectionEquality().equals(other.number, number));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(number));

  @JsonKey(ignore: true)
  @override
  $IssueDetailRouteCopyWith<IssueDetailRoute> get copyWith =>
      _$IssueDetailRouteCopyWithImpl<IssueDetailRoute>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(int number) issueDetail,
    required TResult Function() notFound,
  }) {
    return issueDetail(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(int number)? issueDetail,
    TResult Function()? notFound,
  }) {
    return issueDetail?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(int number)? issueDetail,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (issueDetail != null) {
      return issueDetail(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeRoute value) home,
    required TResult Function(IssueDetailRoute value) issueDetail,
    required TResult Function(NotFoundRoute value) notFound,
  }) {
    return issueDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeRoute value)? home,
    TResult Function(IssueDetailRoute value)? issueDetail,
    TResult Function(NotFoundRoute value)? notFound,
  }) {
    return issueDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeRoute value)? home,
    TResult Function(IssueDetailRoute value)? issueDetail,
    TResult Function(NotFoundRoute value)? notFound,
    required TResult orElse(),
  }) {
    if (issueDetail != null) {
      return issueDetail(this);
    }
    return orElse();
  }
}

abstract class IssueDetailRoute extends AppRoute {
  const factory IssueDetailRoute({required int number}) = _$IssueDetailRoute;
  const IssueDetailRoute._() : super._();

  int get number;
  @JsonKey(ignore: true)
  $IssueDetailRouteCopyWith<IssueDetailRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotFoundRouteCopyWith<$Res> {
  factory $NotFoundRouteCopyWith(
          NotFoundRoute value, $Res Function(NotFoundRoute) then) =
      _$NotFoundRouteCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotFoundRouteCopyWithImpl<$Res> extends _$AppRouteCopyWithImpl<$Res>
    implements $NotFoundRouteCopyWith<$Res> {
  _$NotFoundRouteCopyWithImpl(
      NotFoundRoute _value, $Res Function(NotFoundRoute) _then)
      : super(_value, (v) => _then(v as NotFoundRoute));

  @override
  NotFoundRoute get _value => super._value as NotFoundRoute;
}

/// @nodoc

class _$NotFoundRoute extends NotFoundRoute {
  const _$NotFoundRoute() : super._();

  @override
  String toString() {
    return 'AppRoute.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotFoundRoute);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function(int number) issueDetail,
    required TResult Function() notFound,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(int number)? issueDetail,
    TResult Function()? notFound,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function(int number)? issueDetail,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeRoute value) home,
    required TResult Function(IssueDetailRoute value) issueDetail,
    required TResult Function(NotFoundRoute value) notFound,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeRoute value)? home,
    TResult Function(IssueDetailRoute value)? issueDetail,
    TResult Function(NotFoundRoute value)? notFound,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeRoute value)? home,
    TResult Function(IssueDetailRoute value)? issueDetail,
    TResult Function(NotFoundRoute value)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFoundRoute extends AppRoute {
  const factory NotFoundRoute() = _$NotFoundRoute;
  const NotFoundRoute._() : super._();
}
