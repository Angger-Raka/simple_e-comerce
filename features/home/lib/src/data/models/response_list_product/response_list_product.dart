import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'meta.dart';

part 'response_list_product.g.dart';

@JsonSerializable()
class ResponseListProduct extends Equatable {
  final List<Datum>? data;
  final Meta? meta;

  const ResponseListProduct({this.data, this.meta});

  factory ResponseListProduct.fromJson(Map<String, dynamic> json) {
    return _$ResponseListProductFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResponseListProductToJson(this);

  ResponseListProduct copyWith({
    List<Datum>? data,
    Meta? meta,
  }) {
    return ResponseListProduct(
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  @override
  List<Object?> get props => [data, meta];
}
