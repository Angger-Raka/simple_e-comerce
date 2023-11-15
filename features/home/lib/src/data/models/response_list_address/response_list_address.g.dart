// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_list_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseListAddress _$ResponseListAddressFromJson(Map<String, dynamic> json) =>
    ResponseListAddress(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseListAddressToJson(
        ResponseListAddress instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
