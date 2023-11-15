// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestLogin _$RequestLoginFromJson(Map<String, dynamic> json) => RequestLogin(
      identifier: json['identifier'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$RequestLoginToJson(RequestLogin instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'password': instance.password,
    };
