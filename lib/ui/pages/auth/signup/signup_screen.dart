import 'package:advisor_user_app/ui/pages/main/home/discover_home_screen.dart';
import 'package:advisor_user_app/ui/shared/widgets/blue_btn.dart';
import 'package:advisor_user_app/ui/shared/widgets/cstm_text_field.dart';
import 'package:advisor_user_app/ui/shared/widgets/phone_no_textfield.dart';
import 'package:advisor_user_app/ui/pages/auth/signup/signup_widgets/social_account_row.dart';
import 'package:advisor_user_app/utils/assets.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:advisor_user_app/utils/re_use.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../countrylist/countrylist_screen.dart';
import 'signup_widgets/already_account.dart';
import 'signup_widgets/or_login_with.dart';
import 'signup_widgets/signup_headings.dart';

class SignUpScreen extends StatefulWidget {
  static const id = '/sign_up';

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final phoneNoController = TextEditingController();

  bool isHideText = false;

  String initialCountry = 'SA';

  PhoneNumber number = PhoneNumber(isoCode: 'SA');

  final reUse = ReUse();

  @override
  Widget build(BuildContext context) {
    final requiredValidator =
        RequiredValidator(errorText: 'required_field'.tr());
    final passwordValidator = MultiValidator([
      RequiredValidator(errorText: 'required_field'.tr()),
      MaxLengthValidator(20, errorText: 'max_pass_limit'.tr()),
      MinLengthValidator(8, errorText: 'min_pass_limit'.tr()),
      PatternValidator(r'(?=.*?[#?!@$%^&*-])',
          errorText: 'specialChar_err'.tr())
    ]);
    var outlineInputBorder = OutlineInputBorder(
        borderSide: BorderSide(width: 1.w, color: greyColor));
    return Form(
      key: _formKey,
      child: SafeArea(
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
                      height: 50.h,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 23.w),
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        "create_acc".tr(),
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
                    const AboveHeadings(),
                    SizedBox(
                      height: 31.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: CstmTextFieldTemplate(
                        validator: requiredValidator,
                        hintText: 'enter_email'.tr(),
                        labelText: 'email_addres'.tr(),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: PhoneNoTextField(
                          validator: requiredValidator,
                          number: number,
                          outlineInputBorder: outlineInputBorder,
                          controller: phoneNoController),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: CstmTextFieldTemplate(
                        validator: passwordValidator,
                        hintText: 'password'.tr(),
                        labelText: 'password'.tr(),
                        hideText: true,
                        isPassword: true,
                      ),
                    ),
                    SizedBox(
                      height: 29.h,
                    ),
                    BlueBtn(
                        title: 'sign_up'.tr(),
                        color: lightBluishColor,
                        onPressed: () {
                          signUp();
                        }),
                    SizedBox(
                      height: 21.h,
                    ),
                    const OrLoginWithHeadings(),
                    SizedBox(
                      height: 21.h,
                    ),
                    const SocailAccountRow(),
                    SizedBox(
                      height: 15.h,
                    ),
                    const AlreadyAccount(),
                    SizedBox(
                      height: 10.h,
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

  void signUp() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CountryListScreen()),
      );

      return;
    }
  }
}
