// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      stock: json['stock'] as int?,
      categories:
          (json['categories'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'stock': instance.stock,
      'categories': instance.categories,
    };
