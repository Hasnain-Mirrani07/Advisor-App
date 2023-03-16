import 'package:advisor_user_app/utils/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingAppBar extends StatelessWidget {
  const SettingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.w),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'settings'.tr(),
                style: GoogleFonts.yantramanav(
                  fontSize: 18.sp,
                  color: blackkColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            //  margin: EdgeInsets.only(right: 24.w),
            padding: EdgeInsets.only(
              left: 11.w,
              top: 10.h,
              bottom: 10.h,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.logout_sharp,
                  color: lightBluishColor,
                  size: 18,
                ),
                SizedBox(
                  width: 13.4.w,
                ),
                Text(
                  'logout'.tr(),
                  style: GoogleFonts.yantramanav(
                    fontSize: 15.sp,
                    color: blackkColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 8.w,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
