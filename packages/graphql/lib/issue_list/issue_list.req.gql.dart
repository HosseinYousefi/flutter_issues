// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:graphql/issue_list/issue_list.ast.gql.dart' as _i5;
import 'package:graphql/issue_list/issue_list.data.gql.dart' as _i2;
import 'package:graphql/issue_list/issue_list.var.gql.dart' as _i3;
import 'package:graphql/schema/serializers.gql.dart' as _i6;

part 'issue_list.req.gql.g.dart';

abstract class GIssueListReq
    implements
        Built<GIssueListReq, GIssueListReqBuilder>,
        _i1.OperationRequest<_i2.GIssueListData, _i3.GIssueListVars> {
  GIssueListReq._();

  factory GIssueListReq([Function(GIssueListReqBuilder b) updates]) =
      _$GIssueListReq;

  static void _initializeBuilder(GIssueListReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'IssueList')
    ..executeOnListen = true;
  _i3.GIssueListVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GIssueListData? Function(_i2.GIssueListData?, _i2.GIssueListData?)?
      get updateResult;
  _i2.GIssueListData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GIssueListData? parseData(Map<String, dynamic> json) =>
      _i2.GIssueListData.fromJson(json);
  static Serializer<GIssueListReq> get serializer => _$gIssueListReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GIssueListReq.serializer, this)
          as Map<String, dynamic>);
  static GIssueListReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GIssueListReq.serializer, json);
}
