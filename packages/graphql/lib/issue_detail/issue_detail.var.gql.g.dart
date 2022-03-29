// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue_detail.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GIssueDetailVars> _$gIssueDetailVarsSerializer =
    new _$GIssueDetailVarsSerializer();

class _$GIssueDetailVarsSerializer
    implements StructuredSerializer<GIssueDetailVars> {
  @override
  final Iterable<Type> types = const [GIssueDetailVars, _$GIssueDetailVars];
  @override
  final String wireName = 'GIssueDetailVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GIssueDetailVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'number',
      serializers.serialize(object.number, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GIssueDetailVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssueDetailVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GIssueDetailVars extends GIssueDetailVars {
  @override
  final int number;

  factory _$GIssueDetailVars(
          [void Function(GIssueDetailVarsBuilder)? updates]) =>
      (new GIssueDetailVarsBuilder()..update(updates)).build();

  _$GIssueDetailVars._({required this.number}) : super._() {
    BuiltValueNullFieldError.checkNotNull(number, 'GIssueDetailVars', 'number');
  }

  @override
  GIssueDetailVars rebuild(void Function(GIssueDetailVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssueDetailVarsBuilder toBuilder() =>
      new GIssueDetailVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssueDetailVars && number == other.number;
  }

  @override
  int get hashCode {
    return $jf($jc(0, number.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GIssueDetailVars')
          ..add('number', number))
        .toString();
  }
}

class GIssueDetailVarsBuilder
    implements Builder<GIssueDetailVars, GIssueDetailVarsBuilder> {
  _$GIssueDetailVars? _$v;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  GIssueDetailVarsBuilder();

  GIssueDetailVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _number = $v.number;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssueDetailVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssueDetailVars;
  }

  @override
  void update(void Function(GIssueDetailVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GIssueDetailVars build() {
    final _$result = _$v ??
        new _$GIssueDetailVars._(
            number: BuiltValueNullFieldError.checkNotNull(
                number, 'GIssueDetailVars', 'number'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
