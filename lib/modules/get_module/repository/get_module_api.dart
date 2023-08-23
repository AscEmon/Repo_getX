import 'package:api_test/utils/extension.dart';
import 'package:dio/dio.dart';

import '../../../constant/app_url.dart';
import '../../../utils/enum.dart';
import '/data_provider/api_client.dart';

class GetModuleApi {
  final ApiClient _apiClient = ApiClient();

  GetModuleApi();

  Future<void> getData({
    required Function(Response response) onSuccess,
  }) async {
    await _apiClient
        .request(
            method: Method.GET,
            url: AppUrl.getUrl.url,
            isPopGlobalDialog: false,
            onSuccessFunction: (Response response) {
              onSuccess(response);
            })
        .catchError((error, stackTrace) {
      "api on error $error".log();
      throw Exception(error);
    });
  }
}
