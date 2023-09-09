import 'package:api_request/api_request.dart';
import 'package:padle_me/core/network/baseModel.dart';
import 'package:padle_me/core/network/endpoint.dart';

class CompleteDataAction extends ApiRequestAction<BaseModel> {
  final String firstName;
  final String lastName;
  final String phone;
  final String birthDate;
  final String gender;

  CompleteDataAction({
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.birthDate,
    required this.gender,
  });
  @override
  RequestMethod get method => RequestMethod.POST;

  @override
  Map<String, dynamic> get toMap => {
        "first_name": firstName,
        "last_name": lastName,
        "phone": phone,
        "date_of_birth": birthDate,
        "gender": gender,
      };
  @override
  String get path => EndPoint.completeProfileData;

  @override
  ResponseBuilder<BaseModel> get responseBuilder =>
      (data) => BaseModel.fromJson(data);
}
