// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestRegister _$RequestRegisterFromJson(Map<String, dynamic> json) =>
    RequestRegister(
      username: json['username'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RequestRegisterToJson(RequestRegister instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
    };
