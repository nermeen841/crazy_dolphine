import 'package:api_request/api_request.dart';
import 'package:padle_me/core/network/baseModel.dart';
import 'package:padle_me/core/network/endpoint.dart';

class ResetPasswordAction extends ApiRequestAction<BaseModel> {
  final String email;

  ResetPasswordAction(this.email);
  @override
  RequestMethod get method => RequestMethod.POST;

  @override
  String get path => EndPoint.resetPassword;

  @override
  Map<String, dynamic> get toMap => {
        "email": email,
      };

  @override
  ResponseBuilder<BaseModel> get responseBuilder =>
      (data) => BaseModel.fromJson(data);
}
