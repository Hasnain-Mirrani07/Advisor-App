import 'package:advisor_user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryFilter extends StatelessWidget {
  final String title;
  const CategoryFilter({
    Key? key,
    this.title = 'Safety Tool',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6.h),
      padding: EdgeInsetsDirectional.only(start: 7.w, end: 7.w),
      // constraints: BoxConstraints(
      //   minHeight: 39.h,
      //   minWidth: 50.w,
      // ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(width: 1.w, color: lineGreyColor),
        color: whiteColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        // crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 29.w,
            height: 29.w,
            margin: EdgeInsets.only(top: 5.h, bottom: 5.h, left: 10.w),
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            title,
            style: GoogleFonts.yantramanav(fontSize: 14.sp, color: blackColor),
          )
        ],
      ),
    );
  }
}
