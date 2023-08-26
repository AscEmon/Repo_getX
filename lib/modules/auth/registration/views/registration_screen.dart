import 'package:api_test/global/widget/global_appbar.dart';
import 'package:api_test/global/widget/global_button.dart';
import 'package:api_test/global/widget/global_textformfield.dart';
import 'package:api_test/modules/auth/registration/controller/registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegistrationController());
    return Scaffold(
      appBar: GlobalAppBar(title: "Registration"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            GlobalTextFormField(
              controller: controller.name,
              hintText: "name",
            ),
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
                controller.registrationReq(context);
              },
              buttonText: "Registration",
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
