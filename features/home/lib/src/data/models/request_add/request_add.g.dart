// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_add.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestAdd _$RequestAddFromJson(Map<String, dynamic> json) => RequestAdd(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RequestAddToJson(RequestAdd instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
