import 'package:api_test/constant/constant_key.dart';
import 'package:api_test/data_provider/pref_helper.dart';
import 'package:api_test/global/widget/global_loader.dart';
import 'package:api_test/utils/app_routes.dart';
import 'package:api_test/utils/view_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/navigation.dart';
import '../model/registration_response.dart';
import '../repository/registration_interface.dart';
import '../repository/registration_repository.dart';

class RegistrationController extends GetxController {
  final IRegistrationRepository _registrationRepository =
      RegistrationRepository();

  final TextEditingController name = TextEditingController();

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  void registrationReq(BuildContext context) async {
    final map = <String, dynamic>{};
    map["name"] = name.text;
    map["email"] = email.text;
    map["password"] = password.text;

    ViewUtil.showAlertDialog(
      content: GlobalLoader(),
    );

    await _registrationRepository
        .registrationReq(
            params: map,
            onSuccess: (registration) {
              _setToken(registration);
              Navigation.pop(context);
              Navigation.push(
                context,
                appRoutes: AppRoutes.dashboard,
              );
            })
        .catchError((e) {
      Navigation.pop(context);
    });
  }

  void _setToken(RegistrationResponse registrationResponse) async {
    await PrefHelper.setString(
      AppConstant.TOKEN.key,
      registrationResponse.data?.token ?? "",
    );
  }
}
