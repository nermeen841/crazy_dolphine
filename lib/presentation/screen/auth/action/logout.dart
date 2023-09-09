import 'package:api_request/api_request.dart';
import 'package:padle_me/core/network/baseModel.dart';

import '../../../../core/network/endpoint.dart';

class LogoutActions extends ApiRequestAction<BaseModel> {
  @override
  RequestMethod get method => RequestMethod.POST;

  @override
  String get path => EndPoint.logout;

  @override
  bool get authRequired => true;

  @override
  ResponseBuilder<BaseModel> get responseBuilder =>
      (json) => BaseModel.fromJson(json);
}
