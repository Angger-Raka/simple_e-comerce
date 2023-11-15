import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request_register.g.dart';

@JsonSerializable()
class RequestRegister extends Equatable {
  final String? username;
  final String? email;
  final String? password;
  final String? name;

  const RequestRegister({
    this.username,
    this.email,
    this.password,
    this.name,
  });

  factory RequestRegister.fromJson(Map<String, dynamic> json) {
    return _$RequestRegisterFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RequestRegisterToJson(this);

  RequestRegister copyWith({
    String? username,
    String? email,
    String? password,
    String? name,
  }) {
    return RequestRegister(
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      name: name ?? this.name,
    );
  }

  @override
  List<Object?> get props => [username, email, password, name];
}
