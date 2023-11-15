import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'attributes.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum extends Equatable {
  final int? id;
  final Attributes? attributes;

  const Datum({this.id, this.attributes});

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);

  Datum copyWith({
    int? id,
    Attributes? attributes,
  }) {
    return Datum(
      id: id ?? this.id,
      attributes: attributes ?? this.attributes,
    );
  }

  @override
  List<Object?> get props => [id, attributes];
}
