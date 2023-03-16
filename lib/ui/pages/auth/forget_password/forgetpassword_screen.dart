import 'package:advisor_user_app/ui/pages/auth/verify_email/verify_email_components/otp_widget.dart';
import 'package:advisor_user_app/ui/shared/widgets/blue_btn.dart';
import 'package:advisor_user_app/ui/shared/widgets/cstm_text_field.dart';
import 'package:advisor_user_app/ui/shared/widgets/img_container.dart';
import 'package:advisor_user_app/utils/assets.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:advisor_user_app/utils/re_use.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class ForgetPasswordScreen extends StatefulWidget {
  static const id = '/ForgetPasswordScreen';
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final reUse = ReUse();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //  var size = MediaQuery.of(context).size;
    final requiredValidator =
        RequiredValidator(errorText: 'required_field'.tr());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 33.h,
                    ),
                    Row(children: [
                      const Icon(
                        Icons.arrow_back,
                        color: blackkColor,
                      ),
                      SizedBox(
                        width: 17.h,
                      ),
                      Text(
                        'forgot_password'.tr(),
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
                        imgPath: forgetPasswordIcon,
                        heightC: 111.h,
                        widthC: 96.w,
                      ),
                    ),
                    SizedBox(
                      height: 65.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 26.w),
                      child: Text(
                        textAlign: TextAlign.center,
                        'forget_code_onemail'.tr(),
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: blackColor),
                      ),
                    ),
                    SizedBox(
                      height: 45.h,
                    ),
                    CstmTextFieldTemplate(
                      validator: requiredValidator,
                      hintText: 'demo_email'.tr(),
                      labelText: "email_addres".tr(),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    TextButton(
                      onPressed: null,
                      child: Center(
                        child: Text('try_another_way'.tr(),
                            style: GoogleFonts.yantramanav(
                                color: lightBluishColor,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline)),
                      ),
                    ),
                    SizedBox(height: 194.h),
                    BlueBtn(
                      Horizentalpading: 1.0,
                      title: 'send_code'.tr(),
                      onPressed: () => forgotPass(),
                    ),
                    SizedBox(
                      height: 45.h,
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }

  void forgotPass() {
    if (!_formKey.currentState!.validate()) {
      reUse.goToVerifyEmailScreen(context);
      return;
    }
  }
}
