import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data extends Equatable {
  final String? name;
  final String? description;
  final String? price;
  final int? stock;
  final List<int>? categories;

  const Data({
    this.name,
    this.description,
    this.price,
    this.stock,
    this.categories,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    String? name,
    String? description,
    String? price,
    int? stock,
    List<int>? categories,
  }) {
    return Data(
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      stock: stock ?? this.stock,
      categories: categories ?? this.categories,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      description,
      price,
      stock,
      categories,
    ];
  }
}
