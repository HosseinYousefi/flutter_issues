// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql/schema/schema.schema.gql.dart' as _i2;
import 'package:graphql/schema/serializers.gql.dart' as _i1;

part 'issue_list.data.gql.g.dart';

abstract class GIssueListData
    implements Built<GIssueListData, GIssueListDataBuilder> {
  GIssueListData._();

  factory GIssueListData([Function(GIssueListDataBuilder b) updates]) =
      _$GIssueListData;

  static void _initializeBuilder(GIssueListDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GIssueListData_repository? get repository;
  static Serializer<GIssueListData> get serializer =>
      _$gIssueListDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GIssueListData.serializer, this)
          as Map<String, dynamic>);
  static GIssueListData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GIssueListData.serializer, json);
}

abstract class GIssueListData_repository
    implements
        Built<GIssueListData_repository, GIssueListData_repositoryBuilder> {
  GIssueListData_repository._();

  factory GIssueListData_repository(
          [Function(GIssueListData_repositoryBuilder b) updates]) =
      _$GIssueListData_repository;

  static void _initializeBuilder(GIssueListData_repositoryBuilder b) =>
      b..G__typename = 'Repository';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GIssueListData_repository_issues get issues;
  static Serializer<GIssueListData_repository> get serializer =>
      _$gIssueListDataRepositorySerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GIssueListData_repository.serializer, this)
          as Map<String, dynamic>);
  static GIssueListData_repository? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GIssueListData_repository.serializer, json);
}

abstract class GIssueListData_repository_issues
    implements
        Built<GIssueListData_repository_issues,
            GIssueListData_repository_issuesBuilder> {
  GIssueListData_repository_issues._();

  factory GIssueListData_repository_issues(
          [Function(GIssueListData_repository_issuesBuilder b) updates]) =
      _$GIssueListData_repository_issues;

  static void _initializeBuilder(GIssueListData_repository_issuesBuilder b) =>
      b..G__typename = 'IssueConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GIssueListData_repository_issues_nodes>? get nodes;
  GIssueListData_repository_issues_pageInfo get pageInfo;
  static Serializer<GIssueListData_repository_issues> get serializer =>
      _$gIssueListDataRepositoryIssuesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GIssueListData_repository_issues.serializer, this)
      as Map<String, dynamic>);
  static GIssueListData_repository_issues? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GIssueListData_repository_issues.serializer, json);
}

abstract class GIssueListData_repository_issues_nodes
    implements
        Built<GIssueListData_repository_issues_nodes,
            GIssueListData_repository_issues_nodesBuilder> {
  GIssueListData_repository_issues_nodes._();

  factory GIssueListData_repository_issues_nodes(
          [Function(GIssueListData_repository_issues_nodesBuilder b) updates]) =
      _$GIssueListData_repository_issues_nodes;

  static void _initializeBuilder(
          GIssueListData_repository_issues_nodesBuilder b) =>
      b..G__typename = 'Issue';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  int get number;
  GIssueListData_repository_issues_nodes_labels? get labels;
  GIssueListData_repository_issues_nodes_comments get comments;
  String get title;
  _i2.GIssueState get state;
  DateTime get createdAt;
  static Serializer<GIssueListData_repository_issues_nodes> get serializer =>
      _$gIssueListDataRepositoryIssuesNodesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GIssueListData_repository_issues_nodes.serializer, this)
      as Map<String, dynamic>);
  static GIssueListData_repository_issues_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GIssueListData_repository_issues_nodes.serializer, json);
}

abstract class GIssueListData_repository_issues_nodes_labels
    implements
        Built<GIssueListData_repository_issues_nodes_labels,
            GIssueListData_repository_issues_nodes_labelsBuilder> {
  GIssueListData_repository_issues_nodes_labels._();

  factory GIssueListData_repository_issues_nodes_labels(
      [Function(GIssueListData_repository_issues_nodes_labelsBuilder b)
          updates]) = _$GIssueListData_repository_issues_nodes_labels;

  static void _initializeBuilder(
          GIssueListData_repository_issues_nodes_labelsBuilder b) =>
      b..G__typename = 'LabelConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get totalCount;
  BuiltList<GIssueListData_repository_issues_nodes_labels_nodes>? get nodes;
  static Serializer<GIssueListData_repository_issues_nodes_labels>
      get serializer => _$gIssueListDataRepositoryIssuesNodesLabelsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GIssueListData_repository_issues_nodes_labels.serializer, this)
      as Map<String, dynamic>);
  static GIssueListData_repository_issues_nodes_labels? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GIssueListData_repository_issues_nodes_labels.serializer, json);
}

abstract class GIssueListData_repository_issues_nodes_labels_nodes
    implements
        Built<GIssueListData_repository_issues_nodes_labels_nodes,
            GIssueListData_repository_issues_nodes_labels_nodesBuilder> {
  GIssueListData_repository_issues_nodes_labels_nodes._();

  factory GIssueListData_repository_issues_nodes_labels_nodes(
      [Function(GIssueListData_repository_issues_nodes_labels_nodesBuilder b)
          updates]) = _$GIssueListData_repository_issues_nodes_labels_nodes;

  static void _initializeBuilder(
          GIssueListData_repository_issues_nodes_labels_nodesBuilder b) =>
      b..G__typename = 'Label';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get color;
  String get name;
  static Serializer<GIssueListData_repository_issues_nodes_labels_nodes>
      get serializer =>
          _$gIssueListDataRepositoryIssuesNodesLabelsNodesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GIssueListData_repository_issues_nodes_labels_nodes.serializer, this)
      as Map<String, dynamic>);
  static GIssueListData_repository_issues_nodes_labels_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GIssueListData_repository_issues_nodes_labels_nodes.serializer, json);
}

abstract class GIssueListData_repository_issues_nodes_comments
    implements
        Built<GIssueListData_repository_issues_nodes_comments,
            GIssueListData_repository_issues_nodes_commentsBuilder> {
  GIssueListData_repository_issues_nodes_comments._();

  factory GIssueListData_repository_issues_nodes_comments(
      [Function(GIssueListData_repository_issues_nodes_commentsBuilder b)
          updates]) = _$GIssueListData_repository_issues_nodes_comments;

  static void _initializeBuilder(
          GIssueListData_repository_issues_nodes_commentsBuilder b) =>
      b..G__typename = 'IssueCommentConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get totalCount;
  static Serializer<GIssueListData_repository_issues_nodes_comments>
      get serializer => _$gIssueListDataRepositoryIssuesNodesCommentsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GIssueListData_repository_issues_nodes_comments.serializer, this)
      as Map<String, dynamic>);
  static GIssueListData_repository_issues_nodes_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GIssueListData_repository_issues_nodes_comments.serializer, json);
}

abstract class GIssueListData_repository_issues_pageInfo
    implements
        Built<GIssueListData_repository_issues_pageInfo,
            GIssueListData_repository_issues_pageInfoBuilder> {
  GIssueListData_repository_issues_pageInfo._();

  factory GIssueListData_repository_issues_pageInfo(
      [Function(GIssueListData_repository_issues_pageInfoBuilder b)
          updates]) = _$GIssueListData_repository_issues_pageInfo;

  static void _initializeBuilder(
          GIssueListData_repository_issues_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get endCursor;
  bool get hasNextPage;
  bool get hasPreviousPage;
  String? get startCursor;
  static Serializer<GIssueListData_repository_issues_pageInfo> get serializer =>
      _$gIssueListDataRepositoryIssuesPageInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GIssueListData_repository_issues_pageInfo.serializer, this)
      as Map<String, dynamic>);
  static GIssueListData_repository_issues_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GIssueListData_repository_issues_pageInfo.serializer, json);
}
