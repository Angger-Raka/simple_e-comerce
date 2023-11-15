// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attributes _$AttributesFromJson(Map<String, dynamic> json) => Attributes(
      name: json['name'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      provId: json['prov_id'] as String?,
      cityId: json['city_id'] as String?,
      subdistrictId: json['subdistrict_id'] as String?,
      codePos: json['code_pos'] as String?,
      userId: json['user_id'] as String?,
      isDefault: json['is_default'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      publishedAt: json['publishedAt'] == null
          ? null
          : DateTime.parse(json['publishedAt'] as String),
    );

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
      'prov_id': instance.provId,
      'city_id': instance.cityId,
      'subdistrict_id': instance.subdistrictId,
      'code_pos': instance.codePos,
      'user_id': instance.userId,
      'is_default': instance.isDefault,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'publishedAt': instance.publishedAt?.toIso8601String(),
    };
