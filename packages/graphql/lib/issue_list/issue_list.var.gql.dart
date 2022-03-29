// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql/schema/schema.schema.gql.dart' as _i1;
import 'package:graphql/schema/serializers.gql.dart' as _i2;

part 'issue_list.var.gql.g.dart';

abstract class GIssueListVars
    implements Built<GIssueListVars, GIssueListVarsBuilder> {
  GIssueListVars._();

  factory GIssueListVars([Function(GIssueListVarsBuilder b) updates]) =
      _$GIssueListVars;

  int get first;
  String? get after;
  _i1.GIssueOrder? get orderBy;
  _i1.GIssueFilters? get filterBy;
  static Serializer<GIssueListVars> get serializer =>
      _$gIssueListVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GIssueListVars.serializer, this)
          as Map<String, dynamic>);
  static GIssueListVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GIssueListVars.serializer, json);
}
