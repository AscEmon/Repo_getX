import 'package:api_test/modules/auth/login/repository/login_api.dart';
import 'package:api_test/modules/auth/login/repository/login_interface.dart';
import 'package:api_test/modules/auth/registration/model/registration_response.dart';

class LoginRepository implements ILoginRepository {
  final LoginApi _loginApi = LoginApi();

  @override
  Future loginReq(
      {required Map<String, dynamic> params,
      required Function(RegistrationResponse response) onSuccess}) async {
    await _loginApi
        .loginRequest(
            params: params,
            onSuccess: (response) {
              final RegistrationResponse registrationResponse =
                  RegistrationResponse.fromJson(response.data);

              onSuccess(registrationResponse);
            })
        .catchError((e) {
      throw Exception();
    });
  }
}
