// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:graphql/issue_detail/issue_detail.ast.gql.dart' as _i5;
import 'package:graphql/issue_detail/issue_detail.data.gql.dart' as _i2;
import 'package:graphql/issue_detail/issue_detail.var.gql.dart' as _i3;
import 'package:graphql/schema/serializers.gql.dart' as _i6;

part 'issue_detail.req.gql.g.dart';

abstract class GIssueDetailReq
    implements
        Built<GIssueDetailReq, GIssueDetailReqBuilder>,
        _i1.OperationRequest<_i2.GIssueDetailData, _i3.GIssueDetailVars> {
  GIssueDetailReq._();

  factory GIssueDetailReq([Function(GIssueDetailReqBuilder b) updates]) =
      _$GIssueDetailReq;

  static void _initializeBuilder(GIssueDetailReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'IssueDetail')
    ..executeOnListen = true;
  _i3.GIssueDetailVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GIssueDetailData? Function(_i2.GIssueDetailData?, _i2.GIssueDetailData?)?
      get updateResult;
  _i2.GIssueDetailData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GIssueDetailData? parseData(Map<String, dynamic> json) =>
      _i2.GIssueDetailData.fromJson(json);
  static Serializer<GIssueDetailReq> get serializer =>
      _$gIssueDetailReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GIssueDetailReq.serializer, this)
          as Map<String, dynamic>);
  static GIssueDetailReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GIssueDetailReq.serializer, json);
}
