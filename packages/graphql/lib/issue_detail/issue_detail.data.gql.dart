// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql/schema/schema.schema.gql.dart' as _i2;
import 'package:graphql/schema/serializers.gql.dart' as _i1;

part 'issue_detail.data.gql.g.dart';

abstract class GIssueDetailData
    implements Built<GIssueDetailData, GIssueDetailDataBuilder> {
  GIssueDetailData._();

  factory GIssueDetailData([Function(GIssueDetailDataBuilder b) updates]) =
      _$GIssueDetailData;

  static void _initializeBuilder(GIssueDetailDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GIssueDetailData_repository? get repository;
  static Serializer<GIssueDetailData> get serializer =>
      _$gIssueDetailDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GIssueDetailData.serializer, this)
          as Map<String, dynamic>);
  static GIssueDetailData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GIssueDetailData.serializer, json);
}

abstract class GIssueDetailData_repository
    implements
        Built<GIssueDetailData_repository, GIssueDetailData_repositoryBuilder> {
  GIssueDetailData_repository._();

  factory GIssueDetailData_repository(
          [Function(GIssueDetailData_repositoryBuilder b) updates]) =
      _$GIssueDetailData_repository;

  static void _initializeBuilder(GIssueDetailData_repositoryBuilder b) =>
      b..G__typename = 'Repository';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GIssueDetailData_repository_issue? get issue;
  static Serializer<GIssueDetailData_repository> get serializer =>
      _$gIssueDetailDataRepositorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GIssueDetailData_repository.serializer, this) as Map<String, dynamic>);
  static GIssueDetailData_repository? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GIssueDetailData_repository.serializer, json);
}

abstract class GIssueDetailData_repository_issue
    implements
        Built<GIssueDetailData_repository_issue,
            GIssueDetailData_repository_issueBuilder> {
  GIssueDetailData_repository_issue._();

  factory GIssueDetailData_repository_issue(
          [Function(GIssueDetailData_repository_issueBuilder b) updates]) =
      _$GIssueDetailData_repository_issue;

  static void _initializeBuilder(GIssueDetailData_repository_issueBuilder b) =>
      b..G__typename = 'Issue';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  int get number;
  GIssueDetailData_repository_issue_labels? get labels;
  GIssueDetailData_repository_issue_comments get comments;
  GIssueDetailData_repository_issue_author? get author;
  String get title;
  _i2.GIssueState get state;
  DateTime get createdAt;
  String get body;
  static Serializer<GIssueDetailData_repository_issue> get serializer =>
      _$gIssueDetailDataRepositoryIssueSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GIssueDetailData_repository_issue.serializer, this)
      as Map<String, dynamic>);
  static GIssueDetailData_repository_issue? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GIssueDetailData_repository_issue.serializer, json);
}

abstract class GIssueDetailData_repository_issue_labels
    implements
        Built<GIssueDetailData_repository_issue_labels,
            GIssueDetailData_repository_issue_labelsBuilder> {
  GIssueDetailData_repository_issue_labels._();

  factory GIssueDetailData_repository_issue_labels(
      [Function(GIssueDetailData_repository_issue_labelsBuilder b)
          updates]) = _$GIssueDetailData_repository_issue_labels;

  static void _initializeBuilder(
          GIssueDetailData_repository_issue_labelsBuilder b) =>
      b..G__typename = 'LabelConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get totalCount;
  BuiltList<GIssueDetailData_repository_issue_labels_nodes>? get nodes;
  static Serializer<GIssueDetailData_repository_issue_labels> get serializer =>
      _$gIssueDetailDataRepositoryIssueLabelsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GIssueDetailData_repository_issue_labels.serializer, this)
      as Map<String, dynamic>);
  static GIssueDetailData_repository_issue_labels? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GIssueDetailData_repository_issue_labels.serializer, json);
}

abstract class GIssueDetailData_repository_issue_labels_nodes
    implements
        Built<GIssueDetailData_repository_issue_labels_nodes,
            GIssueDetailData_repository_issue_labels_nodesBuilder> {
  GIssueDetailData_repository_issue_labels_nodes._();

  factory GIssueDetailData_repository_issue_labels_nodes(
      [Function(GIssueDetailData_repository_issue_labels_nodesBuilder b)
          updates]) = _$GIssueDetailData_repository_issue_labels_nodes;

  static void _initializeBuilder(
          GIssueDetailData_repository_issue_labels_nodesBuilder b) =>
      b..G__typename = 'Label';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get color;
  String get name;
  static Serializer<GIssueDetailData_repository_issue_labels_nodes>
      get serializer => _$gIssueDetailDataRepositoryIssueLabelsNodesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GIssueDetailData_repository_issue_labels_nodes.serializer, this)
      as Map<String, dynamic>);
  static GIssueDetailData_repository_issue_labels_nodes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GIssueDetailData_repository_issue_labels_nodes.serializer, json);
}

abstract class GIssueDetailData_repository_issue_comments
    implements
        Built<GIssueDetailData_repository_issue_comments,
            GIssueDetailData_repository_issue_commentsBuilder> {
  GIssueDetailData_repository_issue_comments._();

  factory GIssueDetailData_repository_issue_comments(
      [Function(GIssueDetailData_repository_issue_commentsBuilder b)
          updates]) = _$GIssueDetailData_repository_issue_comments;

  static void _initializeBuilder(
          GIssueDetailData_repository_issue_commentsBuilder b) =>
      b..G__typename = 'IssueCommentConnection';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get totalCount;
  static Serializer<GIssueDetailData_repository_issue_comments>
      get serializer => _$gIssueDetailDataRepositoryIssueCommentsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GIssueDetailData_repository_issue_comments.serializer, this)
      as Map<String, dynamic>);
  static GIssueDetailData_repository_issue_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GIssueDetailData_repository_issue_comments.serializer, json);
}

abstract class GIssueDetailData_repository_issue_author
    implements
        Built<GIssueDetailData_repository_issue_author,
            GIssueDetailData_repository_issue_authorBuilder> {
  GIssueDetailData_repository_issue_author._();

  factory GIssueDetailData_repository_issue_author(
      [Function(GIssueDetailData_repository_issue_authorBuilder b)
          updates]) = _$GIssueDetailData_repository_issue_author;

  static void _initializeBuilder(
          GIssueDetailData_repository_issue_authorBuilder b) =>
      b..G__typename = 'Actor';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get login;
  _i2.GURI get avatarUrl;
  static Serializer<GIssueDetailData_repository_issue_author> get serializer =>
      _$gIssueDetailDataRepositoryIssueAuthorSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GIssueDetailData_repository_issue_author.serializer, this)
      as Map<String, dynamic>);
  static GIssueDetailData_repository_issue_author? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GIssueDetailData_repository_issue_author.serializer, json);
}
