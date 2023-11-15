import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'request_add.g.dart';

@JsonSerializable()
class RequestAdd extends Equatable {
  final Data? data;

  const RequestAdd({this.data});

  factory RequestAdd.fromJson(Map<String, dynamic> json) {
    return _$RequestAddFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RequestAddToJson(this);

  RequestAdd copyWith({
    Data? data,
  }) {
    return RequestAdd(
      data: data ?? this.data,
    );
  }

  @override
  List<Object?> get props => [data];
}
