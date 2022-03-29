// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue_list.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GIssueListData> _$gIssueListDataSerializer =
    new _$GIssueListDataSerializer();
Serializer<GIssueListData_repository> _$gIssueListDataRepositorySerializer =
    new _$GIssueListData_repositorySerializer();
Serializer<GIssueListData_repository_issues>
    _$gIssueListDataRepositoryIssuesSerializer =
    new _$GIssueListData_repository_issuesSerializer();
Serializer<GIssueListData_repository_issues_nodes>
    _$gIssueListDataRepositoryIssuesNodesSerializer =
    new _$GIssueListData_repository_issues_nodesSerializer();
Serializer<GIssueListData_repository_issues_nodes_labels>
    _$gIssueListDataRepositoryIssuesNodesLabelsSerializer =
    new _$GIssueListData_repository_issues_nodes_labelsSerializer();
Serializer<GIssueListData_repository_issues_nodes_labels_nodes>
    _$gIssueListDataRepositoryIssuesNodesLabelsNodesSerializer =
    new _$GIssueListData_repository_issues_nodes_labels_nodesSerializer();
Serializer<GIssueListData_repository_issues_nodes_comments>
    _$gIssueListDataRepositoryIssuesNodesCommentsSerializer =
    new _$GIssueListData_repository_issues_nodes_commentsSerializer();
Serializer<GIssueListData_repository_issues_pageInfo>
    _$gIssueListDataRepositoryIssuesPageInfoSerializer =
    new _$GIssueListData_repository_issues_pageInfoSerializer();

class _$GIssueListDataSerializer
    implements StructuredSerializer<GIssueListData> {
  @override
  final Iterable<Type> types = const [GIssueListData, _$GIssueListData];
  @override
  final String wireName = 'GIssueListData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GIssueListData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.repository;
    if (value != null) {
      result
        ..add('repository')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GIssueListData_repository)));
    }
    return result;
  }

  @override
  GIssueListData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssueListDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repository':
          result.repository.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GIssueListData_repository))!
              as GIssueListData_repository);
          break;
      }
    }

    return result.build();
  }
}

class _$GIssueListData_repositorySerializer
    implements StructuredSerializer<GIssueListData_repository> {
  @override
  final Iterable<Type> types = const [
    GIssueListData_repository,
    _$GIssueListData_repository
  ];
  @override
  final String wireName = 'GIssueListData_repository';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GIssueListData_repository object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'issues',
      serializers.serialize(object.issues,
          specifiedType: const FullType(GIssueListData_repository_issues)),
    ];

    return result;
  }

  @override
  GIssueListData_repository deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssueListData_repositoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issues':
          result.issues.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GIssueListData_repository_issues))!
              as GIssueListData_repository_issues);
          break;
      }
    }

    return result.build();
  }
}

class _$GIssueListData_repository_issuesSerializer
    implements StructuredSerializer<GIssueListData_repository_issues> {
  @override
  final Iterable<Type> types = const [
    GIssueListData_repository_issues,
    _$GIssueListData_repository_issues
  ];
  @override
  final String wireName = 'GIssueListData_repository_issues';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GIssueListData_repository_issues object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'pageInfo',
      serializers.serialize(object.pageInfo,
          specifiedType:
              const FullType(GIssueListData_repository_issues_pageInfo)),
    ];
    Object? value;
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GIssueListData_repository_issues_nodes)
            ])));
    }
    return result;
  }

  @override
  GIssueListData_repository_issues deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssueListData_repository_issuesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GIssueListData_repository_issues_nodes)
              ]))! as BuiltList<Object?>);
          break;
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GIssueListData_repository_issues_pageInfo))!
              as GIssueListData_repository_issues_pageInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$GIssueListData_repository_issues_nodesSerializer
    implements StructuredSerializer<GIssueListData_repository_issues_nodes> {
  @override
  final Iterable<Type> types = const [
    GIssueListData_repository_issues_nodes,
    _$GIssueListData_repository_issues_nodes
  ];
  @override
  final String wireName = 'GIssueListData_repository_issues_nodes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GIssueListData_repository_issues_nodes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'number',
      serializers.serialize(object.number, specifiedType: const FullType(int)),
      'comments',
      serializers.serialize(object.comments,
          specifiedType:
              const FullType(GIssueListData_repository_issues_nodes_comments)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'state',
      serializers.serialize(object.state,
          specifiedType: const FullType(_i2.GIssueState)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
    ];
    Object? value;
    value = object.labels;
    if (value != null) {
      result
        ..add('labels')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GIssueListData_repository_issues_nodes_labels)));
    }
    return result;
  }

  @override
  GIssueListData_repository_issues_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssueListData_repository_issues_nodesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'labels':
          result.labels.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GIssueListData_repository_issues_nodes_labels))!
              as GIssueListData_repository_issues_nodes_labels);
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GIssueListData_repository_issues_nodes_comments))!
              as GIssueListData_repository_issues_nodes_comments);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GIssueState))
              as _i2.GIssueState;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$GIssueListData_repository_issues_nodes_labelsSerializer
    implements
        StructuredSerializer<GIssueListData_repository_issues_nodes_labels> {
  @override
  final Iterable<Type> types = const [
    GIssueListData_repository_issues_nodes_labels,
    _$GIssueListData_repository_issues_nodes_labels
  ];
  @override
  final String wireName = 'GIssueListData_repository_issues_nodes_labels';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GIssueListData_repository_issues_nodes_labels object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'totalCount',
      serializers.serialize(object.totalCount,
          specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.nodes;
    if (value != null) {
      result
        ..add('nodes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GIssueListData_repository_issues_nodes_labels_nodes)
            ])));
    }
    return result;
  }

  @override
  GIssueListData_repository_issues_nodes_labels deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssueListData_repository_issues_nodes_labelsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'totalCount':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'nodes':
          result.nodes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GIssueListData_repository_issues_nodes_labels_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GIssueListData_repository_issues_nodes_labels_nodesSerializer
    implements
        StructuredSerializer<
            GIssueListData_repository_issues_nodes_labels_nodes> {
  @override
  final Iterable<Type> types = const [
    GIssueListData_repository_issues_nodes_labels_nodes,
    _$GIssueListData_repository_issues_nodes_labels_nodes
  ];
  @override
  final String wireName = 'GIssueListData_repository_issues_nodes_labels_nodes';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GIssueListData_repository_issues_nodes_labels_nodes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'color',
      serializers.serialize(object.color,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GIssueListData_repository_issues_nodes_labels_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GIssueListData_repository_issues_nodes_labels_nodesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GIssueListData_repository_issues_nodes_commentsSerializer
    implements
        StructuredSerializer<GIssueListData_repository_issues_nodes_comments> {
  @override
  final Iterable<Type> types = const [
    GIssueListData_repository_issues_nodes_comments,
    _$GIssueListData_repository_issues_nodes_comments
  ];
  @override
  final String wireName = 'GIssueListData_repository_issues_nodes_comments';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GIssueListData_repository_issues_nodes_comments object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'totalCount',
      serializers.serialize(object.totalCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GIssueListData_repository_issues_nodes_comments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssueListData_repository_issues_nodes_commentsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'totalCount':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GIssueListData_repository_issues_pageInfoSerializer
    implements StructuredSerializer<GIssueListData_repository_issues_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GIssueListData_repository_issues_pageInfo,
    _$GIssueListData_repository_issues_pageInfo
  ];
  @override
  final String wireName = 'GIssueListData_repository_issues_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GIssueListData_repository_issues_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'hasNextPage',
      serializers.serialize(object.hasNextPage,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.endCursor;
    if (value != null) {
      result
        ..add('endCursor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GIssueListData_repository_issues_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssueListData_repository_issues_pageInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'endCursor':
          result.endCursor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GIssueListData extends GIssueListData {
  @override
  final String G__typename;
  @override
  final GIssueListData_repository? repository;

  factory _$GIssueListData([void Function(GIssueListDataBuilder)? updates]) =>
      (new GIssueListDataBuilder()..update(updates)).build();

  _$GIssueListData._({required this.G__typename, this.repository}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GIssueListData', 'G__typename');
  }

  @override
  GIssueListData rebuild(void Function(GIssueListDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssueListDataBuilder toBuilder() =>
      new GIssueListDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssueListData &&
        G__typename == other.G__typename &&
        repository == other.repository;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), repository.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GIssueListData')
          ..add('G__typename', G__typename)
          ..add('repository', repository))
        .toString();
  }
}

class GIssueListDataBuilder
    implements Builder<GIssueListData, GIssueListDataBuilder> {
  _$GIssueListData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GIssueListData_repositoryBuilder? _repository;
  GIssueListData_repositoryBuilder get repository =>
      _$this._repository ??= new GIssueListData_repositoryBuilder();
  set repository(GIssueListData_repositoryBuilder? repository) =>
      _$this._repository = repository;

  GIssueListDataBuilder() {
    GIssueListData._initializeBuilder(this);
  }

  GIssueListDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _repository = $v.repository?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssueListData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssueListData;
  }

  @override
  void update(void Function(GIssueListDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GIssueListData build() {
    _$GIssueListData _$result;
    try {
      _$result = _$v ??
          new _$GIssueListData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GIssueListData', 'G__typename'),
              repository: _repository?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'repository';
        _repository?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GIssueListData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GIssueListData_repository extends GIssueListData_repository {
  @override
  final String G__typename;
  @override
  final GIssueListData_repository_issues issues;

  factory _$GIssueListData_repository(
          [void Function(GIssueListData_repositoryBuilder)? updates]) =>
      (new GIssueListData_repositoryBuilder()..update(updates)).build();

  _$GIssueListData_repository._(
      {required this.G__typename, required this.issues})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GIssueListData_repository', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        issues, 'GIssueListData_repository', 'issues');
  }

  @override
  GIssueListData_repository rebuild(
          void Function(GIssueListData_repositoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssueListData_repositoryBuilder toBuilder() =>
      new GIssueListData_repositoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssueListData_repository &&
        G__typename == other.G__typename &&
        issues == other.issues;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), issues.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GIssueListData_repository')
          ..add('G__typename', G__typename)
          ..add('issues', issues))
        .toString();
  }
}

class GIssueListData_repositoryBuilder
    implements
        Builder<GIssueListData_repository, GIssueListData_repositoryBuilder> {
  _$GIssueListData_repository? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GIssueListData_repository_issuesBuilder? _issues;
  GIssueListData_repository_issuesBuilder get issues =>
      _$this._issues ??= new GIssueListData_repository_issuesBuilder();
  set issues(GIssueListData_repository_issuesBuilder? issues) =>
      _$this._issues = issues;

  GIssueListData_repositoryBuilder() {
    GIssueListData_repository._initializeBuilder(this);
  }

  GIssueListData_repositoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _issues = $v.issues.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssueListData_repository other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssueListData_repository;
  }

  @override
  void update(void Function(GIssueListData_repositoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GIssueListData_repository build() {
    _$GIssueListData_repository _$result;
    try {
      _$result = _$v ??
          new _$GIssueListData_repository._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GIssueListData_repository', 'G__typename'),
              issues: issues.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'issues';
        issues.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GIssueListData_repository', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GIssueListData_repository_issues
    extends GIssueListData_repository_issues {
  @override
  final String G__typename;
  @override
  final BuiltList<GIssueListData_repository_issues_nodes>? nodes;
  @override
  final GIssueListData_repository_issues_pageInfo pageInfo;

  factory _$GIssueListData_repository_issues(
          [void Function(GIssueListData_repository_issuesBuilder)? updates]) =>
      (new GIssueListData_repository_issuesBuilder()..update(updates)).build();

  _$GIssueListData_repository_issues._(
      {required this.G__typename, this.nodes, required this.pageInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GIssueListData_repository_issues', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        pageInfo, 'GIssueListData_repository_issues', 'pageInfo');
  }

  @override
  GIssueListData_repository_issues rebuild(
          void Function(GIssueListData_repository_issuesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssueListData_repository_issuesBuilder toBuilder() =>
      new GIssueListData_repository_issuesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssueListData_repository_issues &&
        G__typename == other.G__typename &&
        nodes == other.nodes &&
        pageInfo == other.pageInfo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, G__typename.hashCode), nodes.hashCode), pageInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GIssueListData_repository_issues')
          ..add('G__typename', G__typename)
          ..add('nodes', nodes)
          ..add('pageInfo', pageInfo))
        .toString();
  }
}

class GIssueListData_repository_issuesBuilder
    implements
        Builder<GIssueListData_repository_issues,
            GIssueListData_repository_issuesBuilder> {
  _$GIssueListData_repository_issues? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GIssueListData_repository_issues_nodes>? _nodes;
  ListBuilder<GIssueListData_repository_issues_nodes> get nodes =>
      _$this._nodes ??=
          new ListBuilder<GIssueListData_repository_issues_nodes>();
  set nodes(ListBuilder<GIssueListData_repository_issues_nodes>? nodes) =>
      _$this._nodes = nodes;

  GIssueListData_repository_issues_pageInfoBuilder? _pageInfo;
  GIssueListData_repository_issues_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??=
          new GIssueListData_repository_issues_pageInfoBuilder();
  set pageInfo(GIssueListData_repository_issues_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  GIssueListData_repository_issuesBuilder() {
    GIssueListData_repository_issues._initializeBuilder(this);
  }

  GIssueListData_repository_issuesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _nodes = $v.nodes?.toBuilder();
      _pageInfo = $v.pageInfo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssueListData_repository_issues other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssueListData_repository_issues;
  }

  @override
  void update(void Function(GIssueListData_repository_issuesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GIssueListData_repository_issues build() {
    _$GIssueListData_repository_issues _$result;
    try {
      _$result = _$v ??
          new _$GIssueListData_repository_issues._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GIssueListData_repository_issues', 'G__typename'),
              nodes: _nodes?.build(),
              pageInfo: pageInfo.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
        _$failedField = 'pageInfo';
        pageInfo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GIssueListData_repository_issues', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GIssueListData_repository_issues_nodes
    extends GIssueListData_repository_issues_nodes {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final int number;
  @override
  final GIssueListData_repository_issues_nodes_labels? labels;
  @override
  final GIssueListData_repository_issues_nodes_comments comments;
  @override
  final String title;
  @override
  final _i2.GIssueState state;
  @override
  final DateTime createdAt;

  factory _$GIssueListData_repository_issues_nodes(
          [void Function(GIssueListData_repository_issues_nodesBuilder)?
              updates]) =>
      (new GIssueListData_repository_issues_nodesBuilder()..update(updates))
          .build();

  _$GIssueListData_repository_issues_nodes._(
      {required this.G__typename,
      required this.id,
      required this.number,
      this.labels,
      required this.comments,
      required this.title,
      required this.state,
      required this.createdAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GIssueListData_repository_issues_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GIssueListData_repository_issues_nodes', 'id');
    BuiltValueNullFieldError.checkNotNull(
        number, 'GIssueListData_repository_issues_nodes', 'number');
    BuiltValueNullFieldError.checkNotNull(
        comments, 'GIssueListData_repository_issues_nodes', 'comments');
    BuiltValueNullFieldError.checkNotNull(
        title, 'GIssueListData_repository_issues_nodes', 'title');
    BuiltValueNullFieldError.checkNotNull(
        state, 'GIssueListData_repository_issues_nodes', 'state');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'GIssueListData_repository_issues_nodes', 'createdAt');
  }

  @override
  GIssueListData_repository_issues_nodes rebuild(
          void Function(GIssueListData_repository_issues_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssueListData_repository_issues_nodesBuilder toBuilder() =>
      new GIssueListData_repository_issues_nodesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssueListData_repository_issues_nodes &&
        G__typename == other.G__typename &&
        id == other.id &&
        number == other.number &&
        labels == other.labels &&
        comments == other.comments &&
        title == other.title &&
        state == other.state &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                            number.hashCode),
                        labels.hashCode),
                    comments.hashCode),
                title.hashCode),
            state.hashCode),
        createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GIssueListData_repository_issues_nodes')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('number', number)
          ..add('labels', labels)
          ..add('comments', comments)
          ..add('title', title)
          ..add('state', state)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class GIssueListData_repository_issues_nodesBuilder
    implements
        Builder<GIssueListData_repository_issues_nodes,
            GIssueListData_repository_issues_nodesBuilder> {
  _$GIssueListData_repository_issues_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  GIssueListData_repository_issues_nodes_labelsBuilder? _labels;
  GIssueListData_repository_issues_nodes_labelsBuilder get labels =>
      _$this._labels ??=
          new GIssueListData_repository_issues_nodes_labelsBuilder();
  set labels(GIssueListData_repository_issues_nodes_labelsBuilder? labels) =>
      _$this._labels = labels;

  GIssueListData_repository_issues_nodes_commentsBuilder? _comments;
  GIssueListData_repository_issues_nodes_commentsBuilder get comments =>
      _$this._comments ??=
          new GIssueListData_repository_issues_nodes_commentsBuilder();
  set comments(
          GIssueListData_repository_issues_nodes_commentsBuilder? comments) =>
      _$this._comments = comments;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  _i2.GIssueState? _state;
  _i2.GIssueState? get state => _$this._state;
  set state(_i2.GIssueState? state) => _$this._state = state;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  GIssueListData_repository_issues_nodesBuilder() {
    GIssueListData_repository_issues_nodes._initializeBuilder(this);
  }

  GIssueListData_repository_issues_nodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _number = $v.number;
      _labels = $v.labels?.toBuilder();
      _comments = $v.comments.toBuilder();
      _title = $v.title;
      _state = $v.state;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssueListData_repository_issues_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssueListData_repository_issues_nodes;
  }

  @override
  void update(
      void Function(GIssueListData_repository_issues_nodesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GIssueListData_repository_issues_nodes build() {
    _$GIssueListData_repository_issues_nodes _$result;
    try {
      _$result = _$v ??
          new _$GIssueListData_repository_issues_nodes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GIssueListData_repository_issues_nodes', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GIssueListData_repository_issues_nodes', 'id'),
              number: BuiltValueNullFieldError.checkNotNull(
                  number, 'GIssueListData_repository_issues_nodes', 'number'),
              labels: _labels?.build(),
              comments: comments.build(),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'GIssueListData_repository_issues_nodes', 'title'),
              state: BuiltValueNullFieldError.checkNotNull(
                  state, 'GIssueListData_repository_issues_nodes', 'state'),
              createdAt: BuiltValueNullFieldError.checkNotNull(createdAt,
                  'GIssueListData_repository_issues_nodes', 'createdAt'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'labels';
        _labels?.build();
        _$failedField = 'comments';
        comments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GIssueListData_repository_issues_nodes',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GIssueListData_repository_issues_nodes_labels
    extends GIssueListData_repository_issues_nodes_labels {
  @override
  final String G__typename;
  @override
  final int totalCount;
  @override
  final BuiltList<GIssueListData_repository_issues_nodes_labels_nodes>? nodes;

  factory _$GIssueListData_repository_issues_nodes_labels(
          [void Function(GIssueListData_repository_issues_nodes_labelsBuilder)?
              updates]) =>
      (new GIssueListData_repository_issues_nodes_labelsBuilder()
            ..update(updates))
          .build();

  _$GIssueListData_repository_issues_nodes_labels._(
      {required this.G__typename, required this.totalCount, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GIssueListData_repository_issues_nodes_labels', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(totalCount,
        'GIssueListData_repository_issues_nodes_labels', 'totalCount');
  }

  @override
  GIssueListData_repository_issues_nodes_labels rebuild(
          void Function(GIssueListData_repository_issues_nodes_labelsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssueListData_repository_issues_nodes_labelsBuilder toBuilder() =>
      new GIssueListData_repository_issues_nodes_labelsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssueListData_repository_issues_nodes_labels &&
        G__typename == other.G__typename &&
        totalCount == other.totalCount &&
        nodes == other.nodes;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), totalCount.hashCode),
        nodes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GIssueListData_repository_issues_nodes_labels')
          ..add('G__typename', G__typename)
          ..add('totalCount', totalCount)
          ..add('nodes', nodes))
        .toString();
  }
}

class GIssueListData_repository_issues_nodes_labelsBuilder
    implements
        Builder<GIssueListData_repository_issues_nodes_labels,
            GIssueListData_repository_issues_nodes_labelsBuilder> {
  _$GIssueListData_repository_issues_nodes_labels? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  ListBuilder<GIssueListData_repository_issues_nodes_labels_nodes>? _nodes;
  ListBuilder<
      GIssueListData_repository_issues_nodes_labels_nodes> get nodes => _$this
          ._nodes ??=
      new ListBuilder<GIssueListData_repository_issues_nodes_labels_nodes>();
  set nodes(
          ListBuilder<GIssueListData_repository_issues_nodes_labels_nodes>?
              nodes) =>
      _$this._nodes = nodes;

  GIssueListData_repository_issues_nodes_labelsBuilder() {
    GIssueListData_repository_issues_nodes_labels._initializeBuilder(this);
  }

  GIssueListData_repository_issues_nodes_labelsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _totalCount = $v.totalCount;
      _nodes = $v.nodes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssueListData_repository_issues_nodes_labels other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssueListData_repository_issues_nodes_labels;
  }

  @override
  void update(
      void Function(GIssueListData_repository_issues_nodes_labelsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GIssueListData_repository_issues_nodes_labels build() {
    _$GIssueListData_repository_issues_nodes_labels _$result;
    try {
      _$result = _$v ??
          new _$GIssueListData_repository_issues_nodes_labels._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GIssueListData_repository_issues_nodes_labels',
                  'G__typename'),
              totalCount: BuiltValueNullFieldError.checkNotNull(
                  totalCount,
                  'GIssueListData_repository_issues_nodes_labels',
                  'totalCount'),
              nodes: _nodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GIssueListData_repository_issues_nodes_labels',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GIssueListData_repository_issues_nodes_labels_nodes
    extends GIssueListData_repository_issues_nodes_labels_nodes {
  @override
  final String G__typename;
  @override
  final String color;
  @override
  final String name;

  factory _$GIssueListData_repository_issues_nodes_labels_nodes(
          [void Function(
                  GIssueListData_repository_issues_nodes_labels_nodesBuilder)?
              updates]) =>
      (new GIssueListData_repository_issues_nodes_labels_nodesBuilder()
            ..update(updates))
          .build();

  _$GIssueListData_repository_issues_nodes_labels_nodes._(
      {required this.G__typename, required this.color, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GIssueListData_repository_issues_nodes_labels_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        color, 'GIssueListData_repository_issues_nodes_labels_nodes', 'color');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GIssueListData_repository_issues_nodes_labels_nodes', 'name');
  }

  @override
  GIssueListData_repository_issues_nodes_labels_nodes rebuild(
          void Function(
                  GIssueListData_repository_issues_nodes_labels_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssueListData_repository_issues_nodes_labels_nodesBuilder toBuilder() =>
      new GIssueListData_repository_issues_nodes_labels_nodesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssueListData_repository_issues_nodes_labels_nodes &&
        G__typename == other.G__typename &&
        color == other.color &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), color.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GIssueListData_repository_issues_nodes_labels_nodes')
          ..add('G__typename', G__typename)
          ..add('color', color)
          ..add('name', name))
        .toString();
  }
}

class GIssueListData_repository_issues_nodes_labels_nodesBuilder
    implements
        Builder<GIssueListData_repository_issues_nodes_labels_nodes,
            GIssueListData_repository_issues_nodes_labels_nodesBuilder> {
  _$GIssueListData_repository_issues_nodes_labels_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GIssueListData_repository_issues_nodes_labels_nodesBuilder() {
    GIssueListData_repository_issues_nodes_labels_nodes._initializeBuilder(
        this);
  }

  GIssueListData_repository_issues_nodes_labels_nodesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _color = $v.color;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssueListData_repository_issues_nodes_labels_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssueListData_repository_issues_nodes_labels_nodes;
  }

  @override
  void update(
      void Function(GIssueListData_repository_issues_nodes_labels_nodesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GIssueListData_repository_issues_nodes_labels_nodes build() {
    final _$result = _$v ??
        new _$GIssueListData_repository_issues_nodes_labels_nodes._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GIssueListData_repository_issues_nodes_labels_nodes',
                'G__typename'),
            color: BuiltValueNullFieldError.checkNotNull(color,
                'GIssueListData_repository_issues_nodes_labels_nodes', 'color'),
            name: BuiltValueNullFieldError.checkNotNull(name,
                'GIssueListData_repository_issues_nodes_labels_nodes', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GIssueListData_repository_issues_nodes_comments
    extends GIssueListData_repository_issues_nodes_comments {
  @override
  final String G__typename;
  @override
  final int totalCount;

  factory _$GIssueListData_repository_issues_nodes_comments(
          [void Function(
                  GIssueListData_repository_issues_nodes_commentsBuilder)?
              updates]) =>
      (new GIssueListData_repository_issues_nodes_commentsBuilder()
            ..update(updates))
          .build();

  _$GIssueListData_repository_issues_nodes_comments._(
      {required this.G__typename, required this.totalCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GIssueListData_repository_issues_nodes_comments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(totalCount,
        'GIssueListData_repository_issues_nodes_comments', 'totalCount');
  }

  @override
  GIssueListData_repository_issues_nodes_comments rebuild(
          void Function(GIssueListData_repository_issues_nodes_commentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssueListData_repository_issues_nodes_commentsBuilder toBuilder() =>
      new GIssueListData_repository_issues_nodes_commentsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssueListData_repository_issues_nodes_comments &&
        G__typename == other.G__typename &&
        totalCount == other.totalCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), totalCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GIssueListData_repository_issues_nodes_comments')
          ..add('G__typename', G__typename)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class GIssueListData_repository_issues_nodes_commentsBuilder
    implements
        Builder<GIssueListData_repository_issues_nodes_comments,
            GIssueListData_repository_issues_nodes_commentsBuilder> {
  _$GIssueListData_repository_issues_nodes_comments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  GIssueListData_repository_issues_nodes_commentsBuilder() {
    GIssueListData_repository_issues_nodes_comments._initializeBuilder(this);
  }

  GIssueListData_repository_issues_nodes_commentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssueListData_repository_issues_nodes_comments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssueListData_repository_issues_nodes_comments;
  }

  @override
  void update(
      void Function(GIssueListData_repository_issues_nodes_commentsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GIssueListData_repository_issues_nodes_comments build() {
    final _$result = _$v ??
        new _$GIssueListData_repository_issues_nodes_comments._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GIssueListData_repository_issues_nodes_comments',
                'G__typename'),
            totalCount: BuiltValueNullFieldError.checkNotNull(
                totalCount,
                'GIssueListData_repository_issues_nodes_comments',
                'totalCount'));
    replace(_$result);
    return _$result;
  }
}

class _$GIssueListData_repository_issues_pageInfo
    extends GIssueListData_repository_issues_pageInfo {
  @override
  final String G__typename;
  @override
  final String? endCursor;
  @override
  final bool hasNextPage;

  factory _$GIssueListData_repository_issues_pageInfo(
          [void Function(GIssueListData_repository_issues_pageInfoBuilder)?
              updates]) =>
      (new GIssueListData_repository_issues_pageInfoBuilder()..update(updates))
          .build();

  _$GIssueListData_repository_issues_pageInfo._(
      {required this.G__typename, this.endCursor, required this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GIssueListData_repository_issues_pageInfo', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(hasNextPage,
        'GIssueListData_repository_issues_pageInfo', 'hasNextPage');
  }

  @override
  GIssueListData_repository_issues_pageInfo rebuild(
          void Function(GIssueListData_repository_issues_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssueListData_repository_issues_pageInfoBuilder toBuilder() =>
      new GIssueListData_repository_issues_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssueListData_repository_issues_pageInfo &&
        G__typename == other.G__typename &&
        endCursor == other.endCursor &&
        hasNextPage == other.hasNextPage;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), endCursor.hashCode),
        hasNextPage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GIssueListData_repository_issues_pageInfo')
          ..add('G__typename', G__typename)
          ..add('endCursor', endCursor)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GIssueListData_repository_issues_pageInfoBuilder
    implements
        Builder<GIssueListData_repository_issues_pageInfo,
            GIssueListData_repository_issues_pageInfoBuilder> {
  _$GIssueListData_repository_issues_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _endCursor;
  String? get endCursor => _$this._endCursor;
  set endCursor(String? endCursor) => _$this._endCursor = endCursor;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GIssueListData_repository_issues_pageInfoBuilder() {
    GIssueListData_repository_issues_pageInfo._initializeBuilder(this);
  }

  GIssueListData_repository_issues_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _endCursor = $v.endCursor;
      _hasNextPage = $v.hasNextPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssueListData_repository_issues_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssueListData_repository_issues_pageInfo;
  }

  @override
  void update(
      void Function(GIssueListData_repository_issues_pageInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GIssueListData_repository_issues_pageInfo build() {
    final _$result = _$v ??
        new _$GIssueListData_repository_issues_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GIssueListData_repository_issues_pageInfo', 'G__typename'),
            endCursor: endCursor,
            hasNextPage: BuiltValueNullFieldError.checkNotNull(hasNextPage,
                'GIssueListData_repository_issues_pageInfo', 'hasNextPage'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
