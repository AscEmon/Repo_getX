import 'package:api_test/global/model/global_response.dart';

class RegistrationResponse {
  RegistrationData? data;
  GlobalResponse? globalResponse;

  RegistrationResponse({
    this.data,
    this.globalResponse,
  });

  factory RegistrationResponse.fromJson(Map<String, dynamic> json) =>
      RegistrationResponse(
        globalResponse: GlobalResponse.fromJson(json),
        data: json["data"] == null
            ? null
            : RegistrationData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
      };
}

class RegistrationData {
  int? id;
  String? name;
  String? email;
  String? token;

  RegistrationData({
    this.id,
    this.name,
    this.email,
    this.token,
  });

  factory RegistrationData.fromJson(Map<String, dynamic> json) =>
      RegistrationData(
        id: json["Id"],
        name: json["Name"],
        email: json["Email"],
        token: json["Token"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "Name": name,
        "Email": email,
        "Token": token,
      };
}
