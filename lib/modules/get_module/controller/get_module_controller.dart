import 'package:api_test/modules/get_module/model/get_response.dart';
import 'package:api_test/utils/extension.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../repository/get_module_interface.dart';
import '../repository/get_module_repository.dart';

class GetModuleController extends GetxController {
  final IGetModuleRepository _getmoduleRepository = GetModuleRepository();

  List<Post>? posts;
  bool isGetLoading = true;
  @override
  void onInit() {
    super.onInit();
    getPersonData();
  }

  void getPersonData() async {
    await _getmoduleRepository.fetGetData(
      onSuccess: (getResponse) {
        posts = getResponse.posts ?? [];
        isGetLoading = false;

        "persons length :: ${posts!.length}".log();
      },
    ).catchError((e) {
      isGetLoading = false;
    });
    update();
  }
}
