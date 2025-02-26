// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kindergarten.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KindergartenImpl _$$KindergartenImplFromJson(Map<String, dynamic> json) =>
    _$KindergartenImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      contact_person: json['contact_person'] as String,
      contact_no: json['contact_no'] as String,
    );

Map<String, dynamic> _$$KindergartenImplToJson(_$KindergartenImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'city': instance.city,
      'state': instance.state,
      'contact_person': instance.contact_person,
      'contact_no': instance.contact_no,
    };
