import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request_login.g.dart';

@JsonSerializable()
class RequestLogin extends Equatable {
  final String? identifier;
  final String? password;

  const RequestLogin({this.identifier, this.password});

  factory RequestLogin.fromJson(Map<String, dynamic> json) {
    return _$RequestLoginFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RequestLoginToJson(this);

  RequestLogin copyWith({
    String? identifier,
    String? password,
  }) {
    return RequestLogin(
      identifier: identifier ?? this.identifier,
      password: password ?? this.password,
    );
  }

  @override
  List<Object?> get props => [identifier, password];
}
