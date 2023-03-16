// ignore_for_file: prefer_const_constructors

import 'package:advisor_user_app/ui/pages/auth/verify_email/verify_email_components/otp_widget.dart';
import 'package:advisor_user_app/ui/shared/widgets/blue_btn.dart';
import 'package:advisor_user_app/ui/shared/widgets/img_container.dart';
import 'package:advisor_user_app/utils/assets.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:advisor_user_app/utils/re_use.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerifyEmail extends StatefulWidget {
  static const id = '/VerifyEmail';
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  final reUse = ReUse();
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 34.h,
                  ),
                  Row(children: [
                    const Icon(
                      Icons.arrow_back,
                      color: blackkColor,
                    ),
                    SizedBox(
                      width: 18.h,
                    ),
                    Text(
                      'verify_Your_Email'.tr(),
                      style: GoogleFonts.yantramanav(
                        color: blackColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 68.h,
                  ),
                  Center(
                    child: ImgContainer(
                      imgPath: verifyEmail,
                      heightC: 120.h,
                      widthC: 116.w,
                    ),
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26.w),
                    child: Text(
                      textAlign: TextAlign.center,
                      'four_digit_code'.tr(),
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                  ),
                  SizedBox(
                    height: 68.h,
                  ),
                  OtpBoxField(
                    onCodeChanged: null,
                  ),
                  SizedBox(
                    height: 33.h,
                  ),
                  Center(
                    child: Text(
                      'did_not_receive_code'.tr(),
                      style: GoogleFonts.yantramanav(
                        color: blackkColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  InkWell(
                    onTap: null,
                    splashColor: lightBluishColor,
                    child: Center(
                      child: Text('resend'.tr(),
                          style: GoogleFonts.yantramanav(
                              color: lightBluishColor,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline)),
                    ),
                  ),
                  SizedBox(height: 119.h),
                  SizedBox(
                    height: 45,
                    child: BlueBtn(
                      Horizentalpading: 1.0,
                      title: 'verify'.tr(),
                      onPressed: () =>
                          ReUse().goToCreatNewPasswordScreen(context),
                    ),
                  ),
                  SizedBox(
                    height: 45.h,
                  )
                ],
              )),
        ),
      ),
    );
  }
}
