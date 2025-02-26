// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResultImpl _$$ApiResultImplFromJson(Map<String, dynamic> json) =>
    _$ApiResultImpl(
      first: (json['first'] as num).toInt(),
      prev: (json['prev'] as num?)?.toInt(),
      next: (json['next'] as num?)?.toInt(),
      last: (json['last'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      items: (json['items'] as num).toInt(),
      data: json['data'] as List<dynamic>,
    );

Map<String, dynamic> _$$ApiResultImplToJson(_$ApiResultImpl instance) =>
    <String, dynamic>{
      'first': instance.first,
      'prev': instance.prev,
      'next': instance.next,
      'last': instance.last,
      'pages': instance.pages,
      'items': instance.items,
      'data': instance.data,
    };
