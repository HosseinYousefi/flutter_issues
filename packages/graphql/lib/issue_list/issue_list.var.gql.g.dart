// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue_list.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GIssueListVars> _$gIssueListVarsSerializer =
    new _$GIssueListVarsSerializer();

class _$GIssueListVarsSerializer
    implements StructuredSerializer<GIssueListVars> {
  @override
  final Iterable<Type> types = const [GIssueListVars, _$GIssueListVars];
  @override
  final String wireName = 'GIssueListVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GIssueListVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'first',
      serializers.serialize(object.first, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.after;
    if (value != null) {
      result
        ..add('after')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orderBy;
    if (value != null) {
      result
        ..add('orderBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GIssueOrder)));
    }
    value = object.filterBy;
    if (value != null) {
      result
        ..add('filterBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GIssueFilters)));
    }
    return result;
  }

  @override
  GIssueListVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssueListVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'first':
          result.first = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'after':
          result.after = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'orderBy':
          result.orderBy.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GIssueOrder))!
              as _i1.GIssueOrder);
          break;
        case 'filterBy':
          result.filterBy.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GIssueFilters))!
              as _i1.GIssueFilters);
          break;
      }
    }

    return result.build();
  }
}

class _$GIssueListVars extends GIssueListVars {
  @override
  final int first;
  @override
  final String? after;
  @override
  final _i1.GIssueOrder? orderBy;
  @override
  final _i1.GIssueFilters? filterBy;

  factory _$GIssueListVars([void Function(GIssueListVarsBuilder)? updates]) =>
      (new GIssueListVarsBuilder()..update(updates)).build();

  _$GIssueListVars._(
      {required this.first, this.after, this.orderBy, this.filterBy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(first, 'GIssueListVars', 'first');
  }

  @override
  GIssueListVars rebuild(void Function(GIssueListVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssueListVarsBuilder toBuilder() =>
      new GIssueListVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssueListVars &&
        first == other.first &&
        after == other.after &&
        orderBy == other.orderBy &&
        filterBy == other.filterBy;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, first.hashCode), after.hashCode), orderBy.hashCode),
        filterBy.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GIssueListVars')
          ..add('first', first)
          ..add('after', after)
          ..add('orderBy', orderBy)
          ..add('filterBy', filterBy))
        .toString();
  }
}

class GIssueListVarsBuilder
    implements Builder<GIssueListVars, GIssueListVarsBuilder> {
  _$GIssueListVars? _$v;

  int? _first;
  int? get first => _$this._first;
  set first(int? first) => _$this._first = first;

  String? _after;
  String? get after => _$this._after;
  set after(String? after) => _$this._after = after;

  _i1.GIssueOrderBuilder? _orderBy;
  _i1.GIssueOrderBuilder get orderBy =>
      _$this._orderBy ??= new _i1.GIssueOrderBuilder();
  set orderBy(_i1.GIssueOrderBuilder? orderBy) => _$this._orderBy = orderBy;

  _i1.GIssueFiltersBuilder? _filterBy;
  _i1.GIssueFiltersBuilder get filterBy =>
      _$this._filterBy ??= new _i1.GIssueFiltersBuilder();
  set filterBy(_i1.GIssueFiltersBuilder? filterBy) =>
      _$this._filterBy = filterBy;

  GIssueListVarsBuilder();

  GIssueListVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _first = $v.first;
      _after = $v.after;
      _orderBy = $v.orderBy?.toBuilder();
      _filterBy = $v.filterBy?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssueListVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssueListVars;
  }

  @override
  void update(void Function(GIssueListVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GIssueListVars build() {
    _$GIssueListVars _$result;
    try {
      _$result = _$v ??
          new _$GIssueListVars._(
              first: BuiltValueNullFieldError.checkNotNull(
                  first, 'GIssueListVars', 'first'),
              after: after,
              orderBy: _orderBy?.build(),
              filterBy: _filterBy?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'orderBy';
        _orderBy?.build();
        _$failedField = 'filterBy';
        _filterBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GIssueListVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
