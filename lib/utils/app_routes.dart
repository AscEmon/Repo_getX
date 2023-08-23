import 'package:api_test/modules/get_module/views/get_module_screen.dart';
import 'package:flutter/material.dart';

enum AppRoutes {
  dashboard,
}

extension AppRoutesExtention on AppRoutes {
  Widget buildWidget<T extends Object>({T? arguments}) {
    switch (this) {
      case AppRoutes.dashboard:
        return const GetModuleScreen();
    }
  }
}
