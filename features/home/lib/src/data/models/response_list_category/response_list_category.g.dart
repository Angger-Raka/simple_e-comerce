// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_list_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseListCategory _$ResponseListCategoryFromJson(
        Map<String, dynamic> json) =>
    ResponseListCategory(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseListCategoryToJson(
        ResponseListCategory instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
