import 'package:flutterissues/domain/core/entities/page_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_info.freezed.dart';

@freezed
class PageInfo with _$PageInfo {
  const factory PageInfo({
    required PageStatus status,
    required String endCursor,
  }) = _PageInfo;
}
