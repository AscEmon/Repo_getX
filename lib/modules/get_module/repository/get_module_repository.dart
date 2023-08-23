import 'package:api_test/modules/get_module/model/get_response.dart';
import 'package:api_test/modules/get_module/repository/get_module_api.dart';
import 'package:api_test/utils/extension.dart';

import '/modules/get_module/repository/get_module_interface.dart';

class GetModuleRepository implements IGetModuleRepository {
  final GetModuleApi _getModuleApi = GetModuleApi();
  @override
  Future fetGetData({
    required Function(GetResponse getResponse) onSuccess,
  }) async {
    await _getModuleApi.getData(
      onSuccess: (response) {
        "response :: $response".log();
        final GetResponse getResponse = GetResponse.fromJson(response.data);

        onSuccess(getResponse);
      },
    );
  }
}
