import 'package:advisor_user_app/utils/colors.dart';
import 'package:advisor_user_app/utils/re_use.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AlreadyAccount extends StatelessWidget {
  const AlreadyAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "already_acc".tr(),
          style: TextStyle(
            color: blackColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        GestureDetector(
            onTap: () {
              ReUse().goToOffSignInScreen(context);
            },
            child: Text(
              "log_in".tr(),
              style: GoogleFonts.yantramanav(
                color: lightBluishColor,
                fontWeight: FontWeight.w500,
              ),
            )),
      ],
    );
  }
}
