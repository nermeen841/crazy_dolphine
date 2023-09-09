import 'package:api_request/api_request.dart';
import 'package:padle_me/core/network/baseModel.dart';
import '../../../../core/network/endpoint.dart';

class UpdateProfileActions extends ApiRequestAction<BaseModel> {
  final String? phone;
  final String? email;
  final String? name;

  UpdateProfileActions({
    this.phone,
    this.email,
    this.name,
  });

  @override
  bool get authRequired => true;
  @override
  RequestMethod get method => RequestMethod.POST;
  @override
  ContentDataType? get contentDataType => ContentDataType.formData;
  @override
  Map<String, dynamic> get toMap => {
        "email": email,
        "phone": phone,
        "name": name,
      };
  @override
  String get path => EndPoint.updateProfile;

  @override
  ResponseBuilder<BaseModel> get responseBuilder =>
      (json) => BaseModel.fromJson(json);
}
