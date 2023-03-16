import 'package:advisor_user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MostWatchedVideoo extends StatelessWidget {
  const MostWatchedVideoo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120.w,
            height: 100.h,
            margin: EdgeInsets.only(bottom: 10.h),
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(12.0)),
          ),
          SizedBox(
            width: 14.w,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 3.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Prepare for you  Prepare for you Prepare for you Prepare for you Prepare for you  ",
                    overflow: TextOverflow.fade,
                    maxLines: 2,
                    //maxLines: 2,
                    style: GoogleFonts.yantramanav(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: blackColor,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Jordan Wise",
                    style: GoogleFonts.yantramanav(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: textGreyColor,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    "125,908 views  •  2 days ago",
                    style: GoogleFonts.yantramanav(
                      color: textGreyColor,
                      fontSize: 11.sp,
                      //letterSpacing: 0.5,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ),
          //const Spacer(),
          Container(
            // alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 5.h),
            child: const Icon(
              Icons.more_vert,
              color: blackColor,
              size: 20.0,
            ),
          )
        ],
      ),
    );
  }
}
