import 'package:api_request/api_request.dart';
import 'package:padle_me/core/network/baseModel.dart';
import '../../../../core/network/endpoint.dart';

class DeleteAccountActions extends ApiRequestAction<BaseModel> {
  @override
  RequestMethod get method => RequestMethod.DELETE;

  @override
  String get path => EndPoint.DeleteAccount;

  @override
  bool get authRequired => true;

  @override
  ResponseBuilder<BaseModel> get responseBuilder =>
      (json) => BaseModel.fromJson(json);
}
