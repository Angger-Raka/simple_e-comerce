import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'meta.dart';

part 'response_list_category.g.dart';

@JsonSerializable()
class ResponseListCategory extends Equatable {
  final List<Datum>? data;
  final Meta? meta;

  const ResponseListCategory({this.data, this.meta});

  factory ResponseListCategory.fromJson(Map<String, dynamic> json) {
    return _$ResponseListCategoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResponseListCategoryToJson(this);

  ResponseListCategory copyWith({
    List<Datum>? data,
    Meta? meta,
  }) {
    return ResponseListCategory(
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  @override
  List<Object?> get props => [data, meta];
}
