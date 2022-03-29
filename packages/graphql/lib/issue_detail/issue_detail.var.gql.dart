// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql/schema/serializers.gql.dart' as _i1;

part 'issue_detail.var.gql.g.dart';

abstract class GIssueDetailVars
    implements Built<GIssueDetailVars, GIssueDetailVarsBuilder> {
  GIssueDetailVars._();

  factory GIssueDetailVars([Function(GIssueDetailVarsBuilder b) updates]) =
      _$GIssueDetailVars;

  int get number;
  static Serializer<GIssueDetailVars> get serializer =>
      _$gIssueDetailVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GIssueDetailVars.serializer, this)
          as Map<String, dynamic>);
  static GIssueDetailVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GIssueDetailVars.serializer, json);
}
