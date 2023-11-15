// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseRegister _$ResponseRegisterFromJson(Map<String, dynamic> json) =>
    ResponseRegister(
      jwt: json['jwt'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseRegisterToJson(ResponseRegister instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'user': instance.user,
    };
