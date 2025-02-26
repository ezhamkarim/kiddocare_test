import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'api_result.freezed.dart';
part 'api_result.g.dart';

@freezed
class ApiResult with _$ApiResult {
  const factory ApiResult({
    required int first,
    required int? prev,
    required int? next,
    required int last,
    required int pages,
    required int items,
    required List data,
  }) = _ApiResult;

  factory ApiResult.fromJson(Map<String, Object?> json) =>
      _$ApiResultFromJson(json);
}
