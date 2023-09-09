import 'package:api_request/api_request.dart';
import 'package:padle_me/core/network/baseModel.dart';
import '../../../../core/network/endpoint.dart';

class LoginActions extends ApiRequestAction<BaseModel> {
  final String phone;
  final String password;
  LoginActions({
    required this.phone,
    required this.password,
  });
  @override
  RequestMethod get method => RequestMethod.POST;

  @override
  Map<String, dynamic> get toMap => {
        "phone": phone,
        "password": password,
      };
  @override
  String get path => EndPoint.LOGIN;

  @override
  ResponseBuilder<BaseModel> get responseBuilder =>
      (json) => BaseModel.fromJson(json);
}
