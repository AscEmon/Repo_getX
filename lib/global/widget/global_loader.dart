import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlobalLoader extends StatelessWidget {
  const GlobalLoader({Key? key, this.text = "Loading..."}) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
      const  CircularProgressIndicator.adaptive(),
        SizedBox(width: 10.w),
        Text(text ?? "")
      ],
    );
  }
}

 