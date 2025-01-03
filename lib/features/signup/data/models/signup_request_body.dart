import 'package:json_annotation/json_annotation.dart';
part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String name;
  final String email;
  final String phone;
  final String gender;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String confirmPassword;

  SignupRequestBody({
    required this.email,
    required this.password,
    required this.name,
    required this.phone,
    required this.gender,
    required this.confirmPassword,
  });

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
