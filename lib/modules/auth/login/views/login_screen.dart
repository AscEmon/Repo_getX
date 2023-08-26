import 'package:api_test/global/widget/global_text.dart';
import 'package:api_test/modules/auth/login/controller/login_controller.dart';
import 'package:api_test/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../global/widget/global_appbar.dart';
import '../../../../global/widget/global_button.dart';
import '../../../../global/widget/global_textformfield.dart';
import '../../../../utils/navigation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      appBar: GlobalAppBar(title: "Login"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            GlobalTextFormField(
              controller: controller.email,
              hintText: "Email",
            ),
            SizedBox(
              height: 10.h,
            ),
            GlobalTextFormField(
              controller: controller.password,
              hintText: "Password",
            ),
            const Spacer(),
            GlobalButton(
              onPressed: () {
                controller.loginReq(context);
              },
              buttonText: "Login",
            ),
            SizedBox(
              height: 10.h,
            ),
            GestureDetector(
              onTap: () {
                Navigation.push(
                  context,
                  appRoutes: AppRoutes.registration,
                );
              },
              child: const GlobalText(
                str: "Don't have an account? Sign Up",
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
