import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attributes.g.dart';

@JsonSerializable()
class Attributes extends Equatable {
  final String? name;
  final String? address;
  final String? phone;
  @JsonKey(name: 'prov_id')
  final String? provId;
  @JsonKey(name: 'city_id')
  final String? cityId;
  @JsonKey(name: 'subdistrict_id')
  final String? subdistrictId;
  @JsonKey(name: 'code_pos')
  final String? codePos;
  @JsonKey(name: 'user_id')
  final String? userId;
  @JsonKey(name: 'is_default')
  final bool? isDefault;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? publishedAt;

  const Attributes({
    this.name,
    this.address,
    this.phone,
    this.provId,
    this.cityId,
    this.subdistrictId,
    this.codePos,
    this.userId,
    this.isDefault,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
  });

  factory Attributes.fromJson(Map<String, dynamic> json) {
    return _$AttributesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AttributesToJson(this);

  Attributes copyWith({
    String? name,
    String? address,
    String? phone,
    String? provId,
    String? cityId,
    String? subdistrictId,
    String? codePos,
    String? userId,
    bool? isDefault,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? publishedAt,
  }) {
    return Attributes(
      name: name ?? this.name,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      provId: provId ?? this.provId,
      cityId: cityId ?? this.cityId,
      subdistrictId: subdistrictId ?? this.subdistrictId,
      codePos: codePos ?? this.codePos,
      userId: userId ?? this.userId,
      isDefault: isDefault ?? this.isDefault,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      publishedAt: publishedAt ?? this.publishedAt,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      address,
      phone,
      provId,
      cityId,
      subdistrictId,
      codePos,
      userId,
      isDefault,
      createdAt,
      updatedAt,
      publishedAt,
    ];
  }
}
