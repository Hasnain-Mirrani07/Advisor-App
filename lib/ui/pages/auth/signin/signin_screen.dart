import 'package:advisor_user_app/ui/pages/auth/signup/signup_widgets/social_account_row.dart';
import 'package:advisor_user_app/ui/pages/main/home/discover_home_screen.dart';
import 'package:advisor_user_app/ui/shared/widgets/blue_btn.dart';
import 'package:advisor_user_app/ui/shared/widgets/cstm_text_field.dart';
import 'package:advisor_user_app/utils/assets.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:advisor_user_app/utils/re_use.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  static const id = '/sign_in';

  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isHideText = false;
  final _formKey = GlobalKey<FormState>();
  final reUse = ReUse();
  @override
  Widget build(BuildContext context) {
    final requiredValidator =
        RequiredValidator(errorText: 'required_field'.tr());
    final emailValidator = MultiValidator([
      requiredValidator,
      EmailValidator(errorText: 'enter a valid email address')
    ]);
    final passwordValidator = MultiValidator([
      RequiredValidator(errorText: 'required_field'.tr()),
      MaxLengthValidator(20, errorText: 'max_pass_limit'.tr()),
      MinLengthValidator(8, errorText: 'min_pass_limit'.tr()),
      PatternValidator(r'(?=.*?[#?!@$%^&*-])',
          errorText: 'specialChar_err'.tr())
    ]);
    return SafeArea(
      child: Form(
        key: _formKey,
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: Stack(
            children: [
              Positioned(
                top: 15.h,
                left: 0.0,
                child: Image.asset(
                  leftSideHook,
                  opacity: const AlwaysStoppedAnimation<double>(0.15),
                  height: 142.h,
                ),
              ),
              Positioned(
                top: 50.h,
                right: 0.0,
                child: Image.asset(
                  rightSideHook,
                  opacity: const AlwaysStoppedAnimation<double>(0.15),
                  height: 256.h,
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    Center(
                      child: Image.asset(
                        logoImg,
                        width: 73.w,
                        height: 74.h,
                      ),
                    ),
                    Text(
                      "advisor",
                      style: TextStyle(
                        color: blackColor,
                        fontSize: 27.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 23.w),
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        "sign_in".tr(),
                        style: TextStyle(
                          color: blackColor,
                          letterSpacing: 0.02,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23.w),
                      child: RichText(
                        text: TextSpan(
                          style:
                              TextStyle(color: Colors.black, fontSize: 15.sp),
                          children: [
                            TextSpan(
                                text: 'welcm_expert'.tr(),
                                style: GoogleFonts.yantramanav(
                                  color: greyColor,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                )),
                            TextSpan(
                                text: 'tutorials'.tr(),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                                style: GoogleFonts.yantramanav(
                                  color: lightBluishColor,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                )),
                          ],
                        ),
                        //textScaleFactor: 0.5,
                      ),
                    ),
                    SizedBox(
                      height: 31.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: CstmTextFieldTemplate(
                        hintText: "enter_email".tr(),
                        labelText: 'email_addres'.tr(),
                        validator: emailValidator,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: CstmTextFieldTemplate(
                        validator: passwordValidator,
                        onChanged: (value) {},
                        hintText: 'password'.tr(),
                        labelText: 'password'.tr(),
                        //   showSuffixIcon: true,
                        hideText: isHideText,
                        onTap: () {
                          setState(() {
                            isHideText = !isHideText;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18.w, right: 24.w),
                      child: Row(
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          Text(
                            "remember_me".tr(),
                            style: GoogleFonts.yantramanav(
                              color: blackColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Spacer(),
                          TextButton(
                              onPressed: () {
                                ReUse().goToCreatNewPasswordScreen(context);
                              },
                              child: GestureDetector(
                                onTap: () =>
                                    reUse.goToForgetPasswordScreen(context),
                                child: Text(
                                  'forgot_pass'.tr(),
                                  style: GoogleFonts.yantramanav(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: blackColor),
                                ),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 29.h,
                    ),
                    BlueBtn(
                      title: 'log_in'.tr(),
                      color: lightBluishColor,
                      onPressed: submitLogin,
                    ),
                    SizedBox(
                      height: 21.h,
                    ),
                    _loginWithHeadings(),
                    SizedBox(
                      height: 21.h,
                    ),
                    const SocailAccountRow(),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${'no_account'.tr()}  ",
                          style: GoogleFonts.yantramanav(
                            color: blackColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              ReUse().goToSignUpScreen(context);
                            },
                            child: Text(
                              "register".tr(),
                              style: GoogleFonts.yantramanav(
                                color: lightBluishColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void submitLogin() {
    if (_formKey.currentState!.validate()) {
      reUse.goToMainScreen(context);
      return;
    }
  }

  Widget _loginWithHeadings() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              //width: 113.w,
              height: 1.h,
              color: greyColor,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            "or_login".tr(),
            style: TextStyle(
                fontSize: 14.sp, fontWeight: FontWeight.w400, color: greyColor),
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Container(
              width: 113.w,
              height: 1.h,
              color: greyColor,
            ),
          ),
        ],
      ),
    );
  }
}
