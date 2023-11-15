import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'response_login.g.dart';

@JsonSerializable()
class ResponseLogin extends Equatable {
  final String? jwt;
  final User? user;

  const ResponseLogin({this.jwt, this.user});

  factory ResponseLogin.fromJson(Map<String, dynamic> json) {
    return _$ResponseLoginFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResponseLoginToJson(this);

  ResponseLogin copyWith({
    String? jwt,
    User? user,
  }) {
    return ResponseLogin(
      jwt: jwt ?? this.jwt,
      user: user ?? this.user,
    );
  }

  @override
  List<Object?> get props => [jwt, user];
}
