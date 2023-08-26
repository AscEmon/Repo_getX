import 'package:api_test/modules/auth/login/views/login_screen.dart';
import 'package:api_test/modules/auth/registration/views/registration_screen.dart';
import 'package:api_test/modules/get_module/views/get_module_screen.dart';
import 'package:flutter/material.dart';

enum AppRoutes {
  dashboard,
  registration,
  login,
}

extension AppRoutesExtention on AppRoutes {
  Widget buildWidget<T extends Object>({T? arguments}) {
    switch (this) {
      case AppRoutes.dashboard:
        return const GetModuleScreen();
      case AppRoutes.registration:
        return const RegistrationScreen();
      case AppRoutes.login:
        return const LoginScreen();
    }
  }
}
