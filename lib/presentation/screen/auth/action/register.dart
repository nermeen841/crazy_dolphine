import 'package:api_request/api_request.dart';
import 'package:padle_me/core/network/baseModel.dart';
import '../../../../core/network/endpoint.dart';

class RegisterActions extends ApiRequestAction<BaseModel> {
  final String email;
  final String phone;
  final String password;
  final String confirmPassword;

  RegisterActions({
    required this.password,
    required this.confirmPassword,
    required this.email,
    required this.phone,
  });
  @override
  RequestMethod get method => RequestMethod.POST;
  @override
  ContentDataType? get contentDataType => ContentDataType.formData;
  @override
  Map<String, dynamic> get toMap => {
        "email": email,
        "phone": phone,
        "password": password,
        "confirm_password": confirmPassword,
      };
  @override
  String get path => EndPoint.REGISTER;

  @override
  ResponseBuilder<BaseModel> get responseBuilder =>
      (json) => BaseModel.fromJson(json);
}
