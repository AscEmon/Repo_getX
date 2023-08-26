import 'package:api_test/utils/extension.dart';
import 'package:dio/dio.dart';

import '../../../../constant/app_url.dart';
import '../../../../utils/enum.dart';
import '/data_provider/api_client.dart';

class RegistrationApi {
  final ApiClient _apiClient = ApiClient();

  RegistrationApi();

  Future<void> registrationRequest({
    required Map<String, dynamic> params,
    required Function(Response response) onSuccess,
  }) async {
    await _apiClient
        .request(
            method: Method.POST,
            url: AppUrl.registration.url,
            isPopGlobalDialog: true,
            params: params,
            onSuccessFunction: (Response response) {
              onSuccess(response);
            })
        .catchError((error, stackTrace) {
      "api on error $error".log();
      throw Exception(error);
    });
  }
}
