import 'package:advisor_user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconTextRow extends StatelessWidget {
  final String iconPath;
  final String text;
  const IconTextRow({Key? key, required this.iconPath, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          iconPath,
          width: 21.h,
          height: 21.h,
        ),
        SizedBox(
          width: 9.h,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 13.sp, fontWeight: FontWeight.w400, color: greyEfColor),
        )
      ],
    );
  }
}
