import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'meta.dart';

part 'response_list_address.g.dart';

@JsonSerializable()
class ResponseListAddress extends Equatable {
  final List<Datum>? data;
  final Meta? meta;

  const ResponseListAddress({this.data, this.meta});

  factory ResponseListAddress.fromJson(Map<String, dynamic> json) {
    return _$ResponseListAddressFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResponseListAddressToJson(this);

  ResponseListAddress copyWith({
    List<Datum>? data,
    Meta? meta,
  }) {
    return ResponseListAddress(
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  @override
  List<Object?> get props => [data, meta];
}
