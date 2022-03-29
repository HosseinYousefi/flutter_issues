// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue_detail.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GIssueDetailData> _$gIssueDetailDataSerializer =
    new _$GIssueDetailDataSerializer();
Serializer<GIssueDetailData_repository> _$gIssueDetailDataRepositorySerializer =
    new _$GIssueDetailData_repositorySerializer();
Serializer<GIssueDetailData_repository_issue>
    _$gIssueDetailDataRepositoryIssueSerializer =
    new _$GIssueDetailData_repository_issueSerializer();
Serializer<GIssueDetailData_repository_issue_labels>
    _$gIssueDetailDataRepositoryIssueLabelsSerializer =
    new _$GIssueDetailData_repository_issue_labelsSerializer();
Serializer<GIssueDetailData_repository_issue_labels_nodes>
    _$gIssueDetailDataRepositoryIssueLabelsNodesSerializer =
    new _$GIssueDetailData_repository_issue_labels_nodesSerializer();
Serializer<GIssueDetailData_repository_issue_comments>
    _$gIssueDetailDataRepositoryIssueCommentsSerializer =
    new _$GIssueDetailData_repository_issue_commentsSerializer();

class _$GIssueDetailDataSerializer
    implements StructuredSerializer<GIssueDetailData> {
  @override
  final Iterable<Type> types = const [GIssueDetailData, _$GIssueDetailData];
  @override
  final String wireName = 'GIssueDetailData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GIssueDetailData object,
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
            specifiedType: const FullType(GIssueDetailData_repository)));
    }
    return result;
  }

  @override
  GIssueDetailData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssueDetailDataBuilder();

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
                  specifiedType: const FullType(GIssueDetailData_repository))!
              as GIssueDetailData_repository);
          break;
      }
    }

    return result.build();
  }
}

class _$GIssueDetailData_repositorySerializer
    implements StructuredSerializer<GIssueDetailData_repository> {
  @override
  final Iterable<Type> types = const [
    GIssueDetailData_repository,
    _$GIssueDetailData_repository
  ];
  @override
  final String wireName = 'GIssueDetailData_repository';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GIssueDetailData_repository object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.issue;
    if (value != null) {
      result
        ..add('issue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GIssueDetailData_repository_issue)));
    }
    return result;
  }

  @override
  GIssueDetailData_repository deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssueDetailData_repositoryBuilder();

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
        case 'issue':
          result.issue.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GIssueDetailData_repository_issue))!
              as GIssueDetailData_repository_issue);
          break;
      }
    }

    return result.build();
  }
}

class _$GIssueDetailData_repository_issueSerializer
    implements StructuredSerializer<GIssueDetailData_repository_issue> {
  @override
  final Iterable<Type> types = const [
    GIssueDetailData_repository_issue,
    _$GIssueDetailData_repository_issue
  ];
  @override
  final String wireName = 'GIssueDetailData_repository_issue';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GIssueDetailData_repository_issue object,
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
              const FullType(GIssueDetailData_repository_issue_comments)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'state',
      serializers.serialize(object.state,
          specifiedType: const FullType(_i2.GIssueState)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
      'body',
      serializers.serialize(object.body, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.labels;
    if (value != null) {
      result
        ..add('labels')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GIssueDetailData_repository_issue_labels)));
    }
    return result;
  }

  @override
  GIssueDetailData_repository_issue deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssueDetailData_repository_issueBuilder();

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
                  specifiedType:
                      const FullType(GIssueDetailData_repository_issue_labels))!
              as GIssueDetailData_repository_issue_labels);
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GIssueDetailData_repository_issue_comments))!
              as GIssueDetailData_repository_issue_comments);
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
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GIssueDetailData_repository_issue_labelsSerializer
    implements StructuredSerializer<GIssueDetailData_repository_issue_labels> {
  @override
  final Iterable<Type> types = const [
    GIssueDetailData_repository_issue_labels,
    _$GIssueDetailData_repository_issue_labels
  ];
  @override
  final String wireName = 'GIssueDetailData_repository_issue_labels';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GIssueDetailData_repository_issue_labels object,
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
              const FullType(GIssueDetailData_repository_issue_labels_nodes)
            ])));
    }
    return result;
  }

  @override
  GIssueDetailData_repository_issue_labels deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssueDetailData_repository_issue_labelsBuilder();

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
                const FullType(GIssueDetailData_repository_issue_labels_nodes)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GIssueDetailData_repository_issue_labels_nodesSerializer
    implements
        StructuredSerializer<GIssueDetailData_repository_issue_labels_nodes> {
  @override
  final Iterable<Type> types = const [
    GIssueDetailData_repository_issue_labels_nodes,
    _$GIssueDetailData_repository_issue_labels_nodes
  ];
  @override
  final String wireName = 'GIssueDetailData_repository_issue_labels_nodes';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GIssueDetailData_repository_issue_labels_nodes object,
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
  GIssueDetailData_repository_issue_labels_nodes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssueDetailData_repository_issue_labels_nodesBuilder();

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

class _$GIssueDetailData_repository_issue_commentsSerializer
    implements
        StructuredSerializer<GIssueDetailData_repository_issue_comments> {
  @override
  final Iterable<Type> types = const [
    GIssueDetailData_repository_issue_comments,
    _$GIssueDetailData_repository_issue_comments
  ];
  @override
  final String wireName = 'GIssueDetailData_repository_issue_comments';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GIssueDetailData_repository_issue_comments object,
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
  GIssueDetailData_repository_issue_comments deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GIssueDetailData_repository_issue_commentsBuilder();

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

class _$GIssueDetailData extends GIssueDetailData {
  @override
  final String G__typename;
  @override
  final GIssueDetailData_repository? repository;

  factory _$GIssueDetailData(
          [void Function(GIssueDetailDataBuilder)? updates]) =>
      (new GIssueDetailDataBuilder()..update(updates)).build();

  _$GIssueDetailData._({required this.G__typename, this.repository})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GIssueDetailData', 'G__typename');
  }

  @override
  GIssueDetailData rebuild(void Function(GIssueDetailDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssueDetailDataBuilder toBuilder() =>
      new GIssueDetailDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssueDetailData &&
        G__typename == other.G__typename &&
        repository == other.repository;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), repository.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GIssueDetailData')
          ..add('G__typename', G__typename)
          ..add('repository', repository))
        .toString();
  }
}

class GIssueDetailDataBuilder
    implements Builder<GIssueDetailData, GIssueDetailDataBuilder> {
  _$GIssueDetailData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GIssueDetailData_repositoryBuilder? _repository;
  GIssueDetailData_repositoryBuilder get repository =>
      _$this._repository ??= new GIssueDetailData_repositoryBuilder();
  set repository(GIssueDetailData_repositoryBuilder? repository) =>
      _$this._repository = repository;

  GIssueDetailDataBuilder() {
    GIssueDetailData._initializeBuilder(this);
  }

  GIssueDetailDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _repository = $v.repository?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssueDetailData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssueDetailData;
  }

  @override
  void update(void Function(GIssueDetailDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GIssueDetailData build() {
    _$GIssueDetailData _$result;
    try {
      _$result = _$v ??
          new _$GIssueDetailData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GIssueDetailData', 'G__typename'),
              repository: _repository?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'repository';
        _repository?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GIssueDetailData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GIssueDetailData_repository extends GIssueDetailData_repository {
  @override
  final String G__typename;
  @override
  final GIssueDetailData_repository_issue? issue;

  factory _$GIssueDetailData_repository(
          [void Function(GIssueDetailData_repositoryBuilder)? updates]) =>
      (new GIssueDetailData_repositoryBuilder()..update(updates)).build();

  _$GIssueDetailData_repository._({required this.G__typename, this.issue})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GIssueDetailData_repository', 'G__typename');
  }

  @override
  GIssueDetailData_repository rebuild(
          void Function(GIssueDetailData_repositoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssueDetailData_repositoryBuilder toBuilder() =>
      new GIssueDetailData_repositoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssueDetailData_repository &&
        G__typename == other.G__typename &&
        issue == other.issue;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), issue.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GIssueDetailData_repository')
          ..add('G__typename', G__typename)
          ..add('issue', issue))
        .toString();
  }
}

class GIssueDetailData_repositoryBuilder
    implements
        Builder<GIssueDetailData_repository,
            GIssueDetailData_repositoryBuilder> {
  _$GIssueDetailData_repository? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GIssueDetailData_repository_issueBuilder? _issue;
  GIssueDetailData_repository_issueBuilder get issue =>
      _$this._issue ??= new GIssueDetailData_repository_issueBuilder();
  set issue(GIssueDetailData_repository_issueBuilder? issue) =>
      _$this._issue = issue;

  GIssueDetailData_repositoryBuilder() {
    GIssueDetailData_repository._initializeBuilder(this);
  }

  GIssueDetailData_repositoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _issue = $v.issue?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssueDetailData_repository other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssueDetailData_repository;
  }

  @override
  void update(void Function(GIssueDetailData_repositoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GIssueDetailData_repository build() {
    _$GIssueDetailData_repository _$result;
    try {
      _$result = _$v ??
          new _$GIssueDetailData_repository._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GIssueDetailData_repository', 'G__typename'),
              issue: _issue?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'issue';
        _issue?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GIssueDetailData_repository', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GIssueDetailData_repository_issue
    extends GIssueDetailData_repository_issue {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final int number;
  @override
  final GIssueDetailData_repository_issue_labels? labels;
  @override
  final GIssueDetailData_repository_issue_comments comments;
  @override
  final String title;
  @override
  final _i2.GIssueState state;
  @override
  final DateTime createdAt;
  @override
  final String body;

  factory _$GIssueDetailData_repository_issue(
          [void Function(GIssueDetailData_repository_issueBuilder)? updates]) =>
      (new GIssueDetailData_repository_issueBuilder()..update(updates)).build();

  _$GIssueDetailData_repository_issue._(
      {required this.G__typename,
      required this.id,
      required this.number,
      this.labels,
      required this.comments,
      required this.title,
      required this.state,
      required this.createdAt,
      required this.body})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GIssueDetailData_repository_issue', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GIssueDetailData_repository_issue', 'id');
    BuiltValueNullFieldError.checkNotNull(
        number, 'GIssueDetailData_repository_issue', 'number');
    BuiltValueNullFieldError.checkNotNull(
        comments, 'GIssueDetailData_repository_issue', 'comments');
    BuiltValueNullFieldError.checkNotNull(
        title, 'GIssueDetailData_repository_issue', 'title');
    BuiltValueNullFieldError.checkNotNull(
        state, 'GIssueDetailData_repository_issue', 'state');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'GIssueDetailData_repository_issue', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        body, 'GIssueDetailData_repository_issue', 'body');
  }

  @override
  GIssueDetailData_repository_issue rebuild(
          void Function(GIssueDetailData_repository_issueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssueDetailData_repository_issueBuilder toBuilder() =>
      new GIssueDetailData_repository_issueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssueDetailData_repository_issue &&
        G__typename == other.G__typename &&
        id == other.id &&
        number == other.number &&
        labels == other.labels &&
        comments == other.comments &&
        title == other.title &&
        state == other.state &&
        createdAt == other.createdAt &&
        body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
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
            createdAt.hashCode),
        body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GIssueDetailData_repository_issue')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('number', number)
          ..add('labels', labels)
          ..add('comments', comments)
          ..add('title', title)
          ..add('state', state)
          ..add('createdAt', createdAt)
          ..add('body', body))
        .toString();
  }
}

class GIssueDetailData_repository_issueBuilder
    implements
        Builder<GIssueDetailData_repository_issue,
            GIssueDetailData_repository_issueBuilder> {
  _$GIssueDetailData_repository_issue? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _number;
  int? get number => _$this._number;
  set number(int? number) => _$this._number = number;

  GIssueDetailData_repository_issue_labelsBuilder? _labels;
  GIssueDetailData_repository_issue_labelsBuilder get labels =>
      _$this._labels ??= new GIssueDetailData_repository_issue_labelsBuilder();
  set labels(GIssueDetailData_repository_issue_labelsBuilder? labels) =>
      _$this._labels = labels;

  GIssueDetailData_repository_issue_commentsBuilder? _comments;
  GIssueDetailData_repository_issue_commentsBuilder get comments =>
      _$this._comments ??=
          new GIssueDetailData_repository_issue_commentsBuilder();
  set comments(GIssueDetailData_repository_issue_commentsBuilder? comments) =>
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

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  GIssueDetailData_repository_issueBuilder() {
    GIssueDetailData_repository_issue._initializeBuilder(this);
  }

  GIssueDetailData_repository_issueBuilder get _$this {
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
      _body = $v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssueDetailData_repository_issue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssueDetailData_repository_issue;
  }

  @override
  void update(
      void Function(GIssueDetailData_repository_issueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GIssueDetailData_repository_issue build() {
    _$GIssueDetailData_repository_issue _$result;
    try {
      _$result = _$v ??
          new _$GIssueDetailData_repository_issue._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GIssueDetailData_repository_issue', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GIssueDetailData_repository_issue', 'id'),
              number: BuiltValueNullFieldError.checkNotNull(
                  number, 'GIssueDetailData_repository_issue', 'number'),
              labels: _labels?.build(),
              comments: comments.build(),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'GIssueDetailData_repository_issue', 'title'),
              state: BuiltValueNullFieldError.checkNotNull(
                  state, 'GIssueDetailData_repository_issue', 'state'),
              createdAt: BuiltValueNullFieldError.checkNotNull(
                  createdAt, 'GIssueDetailData_repository_issue', 'createdAt'),
              body: BuiltValueNullFieldError.checkNotNull(
                  body, 'GIssueDetailData_repository_issue', 'body'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'labels';
        _labels?.build();
        _$failedField = 'comments';
        comments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GIssueDetailData_repository_issue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GIssueDetailData_repository_issue_labels
    extends GIssueDetailData_repository_issue_labels {
  @override
  final String G__typename;
  @override
  final int totalCount;
  @override
  final BuiltList<GIssueDetailData_repository_issue_labels_nodes>? nodes;

  factory _$GIssueDetailData_repository_issue_labels(
          [void Function(GIssueDetailData_repository_issue_labelsBuilder)?
              updates]) =>
      (new GIssueDetailData_repository_issue_labelsBuilder()..update(updates))
          .build();

  _$GIssueDetailData_repository_issue_labels._(
      {required this.G__typename, required this.totalCount, this.nodes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GIssueDetailData_repository_issue_labels', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        totalCount, 'GIssueDetailData_repository_issue_labels', 'totalCount');
  }

  @override
  GIssueDetailData_repository_issue_labels rebuild(
          void Function(GIssueDetailData_repository_issue_labelsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssueDetailData_repository_issue_labelsBuilder toBuilder() =>
      new GIssueDetailData_repository_issue_labelsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssueDetailData_repository_issue_labels &&
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
            'GIssueDetailData_repository_issue_labels')
          ..add('G__typename', G__typename)
          ..add('totalCount', totalCount)
          ..add('nodes', nodes))
        .toString();
  }
}

class GIssueDetailData_repository_issue_labelsBuilder
    implements
        Builder<GIssueDetailData_repository_issue_labels,
            GIssueDetailData_repository_issue_labelsBuilder> {
  _$GIssueDetailData_repository_issue_labels? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  ListBuilder<GIssueDetailData_repository_issue_labels_nodes>? _nodes;
  ListBuilder<GIssueDetailData_repository_issue_labels_nodes> get nodes =>
      _$this._nodes ??=
          new ListBuilder<GIssueDetailData_repository_issue_labels_nodes>();
  set nodes(
          ListBuilder<GIssueDetailData_repository_issue_labels_nodes>? nodes) =>
      _$this._nodes = nodes;

  GIssueDetailData_repository_issue_labelsBuilder() {
    GIssueDetailData_repository_issue_labels._initializeBuilder(this);
  }

  GIssueDetailData_repository_issue_labelsBuilder get _$this {
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
  void replace(GIssueDetailData_repository_issue_labels other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssueDetailData_repository_issue_labels;
  }

  @override
  void update(
      void Function(GIssueDetailData_repository_issue_labelsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GIssueDetailData_repository_issue_labels build() {
    _$GIssueDetailData_repository_issue_labels _$result;
    try {
      _$result = _$v ??
          new _$GIssueDetailData_repository_issue_labels._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GIssueDetailData_repository_issue_labels', 'G__typename'),
              totalCount: BuiltValueNullFieldError.checkNotNull(totalCount,
                  'GIssueDetailData_repository_issue_labels', 'totalCount'),
              nodes: _nodes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nodes';
        _nodes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GIssueDetailData_repository_issue_labels',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GIssueDetailData_repository_issue_labels_nodes
    extends GIssueDetailData_repository_issue_labels_nodes {
  @override
  final String G__typename;
  @override
  final String color;
  @override
  final String name;

  factory _$GIssueDetailData_repository_issue_labels_nodes(
          [void Function(GIssueDetailData_repository_issue_labels_nodesBuilder)?
              updates]) =>
      (new GIssueDetailData_repository_issue_labels_nodesBuilder()
            ..update(updates))
          .build();

  _$GIssueDetailData_repository_issue_labels_nodes._(
      {required this.G__typename, required this.color, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GIssueDetailData_repository_issue_labels_nodes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        color, 'GIssueDetailData_repository_issue_labels_nodes', 'color');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GIssueDetailData_repository_issue_labels_nodes', 'name');
  }

  @override
  GIssueDetailData_repository_issue_labels_nodes rebuild(
          void Function(GIssueDetailData_repository_issue_labels_nodesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssueDetailData_repository_issue_labels_nodesBuilder toBuilder() =>
      new GIssueDetailData_repository_issue_labels_nodesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssueDetailData_repository_issue_labels_nodes &&
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
            'GIssueDetailData_repository_issue_labels_nodes')
          ..add('G__typename', G__typename)
          ..add('color', color)
          ..add('name', name))
        .toString();
  }
}

class GIssueDetailData_repository_issue_labels_nodesBuilder
    implements
        Builder<GIssueDetailData_repository_issue_labels_nodes,
            GIssueDetailData_repository_issue_labels_nodesBuilder> {
  _$GIssueDetailData_repository_issue_labels_nodes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GIssueDetailData_repository_issue_labels_nodesBuilder() {
    GIssueDetailData_repository_issue_labels_nodes._initializeBuilder(this);
  }

  GIssueDetailData_repository_issue_labels_nodesBuilder get _$this {
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
  void replace(GIssueDetailData_repository_issue_labels_nodes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssueDetailData_repository_issue_labels_nodes;
  }

  @override
  void update(
      void Function(GIssueDetailData_repository_issue_labels_nodesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GIssueDetailData_repository_issue_labels_nodes build() {
    final _$result = _$v ??
        new _$GIssueDetailData_repository_issue_labels_nodes._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GIssueDetailData_repository_issue_labels_nodes',
                'G__typename'),
            color: BuiltValueNullFieldError.checkNotNull(color,
                'GIssueDetailData_repository_issue_labels_nodes', 'color'),
            name: BuiltValueNullFieldError.checkNotNull(name,
                'GIssueDetailData_repository_issue_labels_nodes', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GIssueDetailData_repository_issue_comments
    extends GIssueDetailData_repository_issue_comments {
  @override
  final String G__typename;
  @override
  final int totalCount;

  factory _$GIssueDetailData_repository_issue_comments(
          [void Function(GIssueDetailData_repository_issue_commentsBuilder)?
              updates]) =>
      (new GIssueDetailData_repository_issue_commentsBuilder()..update(updates))
          .build();

  _$GIssueDetailData_repository_issue_comments._(
      {required this.G__typename, required this.totalCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GIssueDetailData_repository_issue_comments', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        totalCount, 'GIssueDetailData_repository_issue_comments', 'totalCount');
  }

  @override
  GIssueDetailData_repository_issue_comments rebuild(
          void Function(GIssueDetailData_repository_issue_commentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GIssueDetailData_repository_issue_commentsBuilder toBuilder() =>
      new GIssueDetailData_repository_issue_commentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GIssueDetailData_repository_issue_comments &&
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
            'GIssueDetailData_repository_issue_comments')
          ..add('G__typename', G__typename)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class GIssueDetailData_repository_issue_commentsBuilder
    implements
        Builder<GIssueDetailData_repository_issue_comments,
            GIssueDetailData_repository_issue_commentsBuilder> {
  _$GIssueDetailData_repository_issue_comments? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  GIssueDetailData_repository_issue_commentsBuilder() {
    GIssueDetailData_repository_issue_comments._initializeBuilder(this);
  }

  GIssueDetailData_repository_issue_commentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GIssueDetailData_repository_issue_comments other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GIssueDetailData_repository_issue_comments;
  }

  @override
  void update(
      void Function(GIssueDetailData_repository_issue_commentsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GIssueDetailData_repository_issue_comments build() {
    final _$result = _$v ??
        new _$GIssueDetailData_repository_issue_comments._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GIssueDetailData_repository_issue_comments', 'G__typename'),
            totalCount: BuiltValueNullFieldError.checkNotNull(totalCount,
                'GIssueDetailData_repository_issue_comments', 'totalCount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
