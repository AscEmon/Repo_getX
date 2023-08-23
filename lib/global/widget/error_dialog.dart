  import 'package:api_test/global/widget/global_text.dart';
import 'package:api_test/utils/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    Key? key,
    required this.erroMsg,
  }) : super(key: key);

  final List<String> erroMsg;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
              InkWell(
              onTap: () {
                Navigation.pop(Navigation.key.currentContext);
              },
              child: const Icon(Icons.close),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              erroMsg.length,
              (index) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.only(right: 30..w),
                      child: GlobalText(
                        str: "${erroMsg[index].toString()}",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff999999),
                        letterSpacing: 0.2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

 