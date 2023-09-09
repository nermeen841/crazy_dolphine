import 'package:api_request/api_request.dart';
import 'package:padle_me/core/network/baseModel.dart';
import 'package:padle_me/core/network/endpoint.dart';

class GetProfileActions extends ApiRequestAction<BaseModel> {
  @override
  RequestMethod get method => RequestMethod.GET;

  @override
  String get path => EndPoint.getProfile;

  @override
  bool get authRequired => true;
  @override
  ResponseBuilder<BaseModel> get responseBuilder =>
      (json) => BaseModel.fromJson(json);
}
