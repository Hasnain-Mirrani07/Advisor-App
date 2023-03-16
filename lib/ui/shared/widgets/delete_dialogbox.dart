import 'package:advisor_user_app/utils/colors.dart';
import 'package:advisor_user_app/utils/re_use.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DeleteAccountWarning extends StatelessWidget {
  DeleteAccountWarning({Key? key}) : super(key: key);
  // final signInController = Get.put(SignInController());
  final reUse = ReUse();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 320.w,
        // height: 144.h,
        // padding: EdgeInsets.only(top: 30.h, bottom: 15.h),
        decoration: BoxDecoration(
            color: const Color(0xffF4F6F8),
            borderRadius: BorderRadius.circular(16.r)),
        child: FittedBox(
          fit: BoxFit.cover,
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 53.w, right: 54.w),
                child: Text(
                  "are_u_sure".tr(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.yantramanav(
                    fontSize: 16.sp,
                    color: black39Color,
                    //fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    // style: ElevatedButton.styleFrom(primary: greenColor),
                    onPressed: () => reUse.goBack(context),
                    child: Text(
                      "cancel".tr(),
                      style: GoogleFonts.yantramanav(
                        color: Color(0XFF34A853),
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 41.w,
                  ),
                  TextButton(
                    // style: ElevatedButton.styleFrom(primary: greenColor),
                    onPressed: null, //signInController.deleteAccount,
                    child: Text(
                      "delete".tr(),
                      style: GoogleFonts.yantramanav(
                        color: black39Color,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
