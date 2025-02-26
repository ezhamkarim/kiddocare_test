import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'kindergarten.freezed.dart';
part 'kindergarten.g.dart';

@freezed
class Kindergarten with _$Kindergarten {
  const factory Kindergarten({
    required String id,
    required String name,
    required String description,
    required String imageUrl,
    required String city,
    required String state,
    required String contact_person,
    required String contact_no,
  }) = _Kindergarten;

  factory Kindergarten.fromJson(Map<String, Object?> json) =>
      _$KindergartenFromJson(json);
}
