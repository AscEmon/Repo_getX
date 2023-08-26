import 'package:api_test/modules/auth/registration/model/registration_response.dart';
import 'package:api_test/modules/auth/registration/repository/registration_api.dart';
import 'package:api_test/modules/auth/registration/repository/registration_interface.dart';

class RegistrationRepository implements IRegistrationRepository {
  final RegistrationApi _registrationApi = RegistrationApi();

  @override
  Future registrationReq({
    required Map<String, dynamic> params,
    required Function(RegistrationResponse response) onSuccess,
  }) async {
    await _registrationApi
        .registrationRequest(
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
