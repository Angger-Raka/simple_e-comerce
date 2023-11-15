import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attributes.g.dart';

@JsonSerializable()
class Attributes extends Equatable {
  final String? name;
  final String? description;
  final String? price;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? publishedAt;
  final int? stock;

  const Attributes({
    this.name,
    this.description,
    this.price,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.stock,
  });

  factory Attributes.fromJson(Map<String, dynamic> json) {
    return _$AttributesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AttributesToJson(this);

  Attributes copyWith({
    String? name,
    String? description,
    String? price,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? publishedAt,
    int? stock,
  }) {
    return Attributes(
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      publishedAt: publishedAt ?? this.publishedAt,
      stock: stock ?? this.stock,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      description,
      price,
      createdAt,
      updatedAt,
      publishedAt,
      stock,
    ];
  }
}
