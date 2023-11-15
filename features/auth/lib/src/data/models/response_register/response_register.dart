import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'response_register.g.dart';

@JsonSerializable()
class ResponseRegister extends Equatable {
  final String? jwt;
  final User? user;

  const ResponseRegister({this.jwt, this.user});

  factory ResponseRegister.fromJson(Map<String, dynamic> json) {
    return _$ResponseRegisterFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResponseRegisterToJson(this);

  ResponseRegister copyWith({
    String? jwt,
    User? user,
  }) {
    return ResponseRegister(
      jwt: jwt ?? this.jwt,
      user: user ?? this.user,
    );
  }

  @override
  List<Object?> get props => [jwt, user];
}
