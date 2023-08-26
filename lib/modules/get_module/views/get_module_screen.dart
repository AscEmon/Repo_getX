import 'package:api_test/global/widget/global_appbar.dart';
import 'package:api_test/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../global/widget/global_text.dart';
import '../../../utils/styles/styles.dart';
import '../controller/get_module_controller.dart';

class GetModuleScreen extends StatelessWidget {
  const GetModuleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GetModuleController());
    return Scaffold(
      appBar: GlobalAppBar(title: "GetScreen"),
      body: Column(
        children: [
          Expanded(
            child: GetBuilder<GetModuleController>(
              builder: (_) {
                if (controller.isGetLoading) {
                  return SizedBox(
                    height: Get.height * 0.7,
                    child: centerCircularProgress(),
                  );
                }
                return ListView.builder(
                  itemCount: controller.posts!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        tileColor: KColor.grey.color.withOpacity(0.2),
                        title: GlobalText(
                          str: controller.posts![index].name ?? "",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
