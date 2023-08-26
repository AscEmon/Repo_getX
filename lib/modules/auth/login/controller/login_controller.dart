import 'package:flutter/material.dart';

import '../../../../constant/constant_key.dart';
import '../../../../data_provider/pref_helper.dart';
import '../../../../global/widget/global_loader.dart';
import '../../../../utils/app_routes.dart';
import '../../../../utils/navigation.dart';
import '../../../../utils/view_util.dart';
import '../../registration/model/registration_response.dart';
import '../repository/login_interface.dart';
import '../repository/login_repository.dart';

class LoginController {
  final ILoginRepository _loginRepository = LoginRepository();
  final TextEditingController name = TextEditingController();

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  void loginReq(BuildContext context) async {
    final map = <String, dynamic>{};
    map["name"] = name.text;
    map["email"] = email.text;
    map["password"] = password.text;

    ViewUtil.showAlertDialog(
      content: const GlobalLoader(),
    );

    await _loginRepository
        .loginReq(
            params: map,
            onSuccess: (registration) {
              _setToken(registration);
              Navigation.pop(context);
              Navigation.pushAndRemoveUntil(
                context,
                appRoutes: AppRoutes.dashboard,
              );
              clearTextformField();
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

  void clearTextformField() {
    name.clear();
    email.clear();
    password.clear();
  }
}
