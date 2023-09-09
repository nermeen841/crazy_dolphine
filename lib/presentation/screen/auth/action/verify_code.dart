import 'package:api_request/api_request.dart';
import 'package:padle_me/core/network/baseModel.dart';
import '../../../../core/network/endpoint.dart';

class VerifyActions extends ApiRequestAction<BaseModel> {
  final String code;
  VerifyActions({
    required this.code,
  });
  @override
  RequestMethod get method => RequestMethod.POST;
  @override
  Map<String, dynamic> get toMap => {
        "code": code,
      };
  @override
  String get path => EndPoint.VerifyCode;

  @override
  ResponseBuilder<BaseModel> get responseBuilder =>
      (json) => BaseModel.fromJson(json);
}
