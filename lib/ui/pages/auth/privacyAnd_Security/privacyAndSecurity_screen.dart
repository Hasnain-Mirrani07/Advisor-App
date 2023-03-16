import 'dart:ui';

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
import 'package:provider/provider.dart';

import '../../../../core/providers/showPassword_provider.dart';

class PrivacyAndSecurtyScreen extends StatefulWidget {
  static const id = '/PrivacyAndSecurtyScreen';
  const PrivacyAndSecurtyScreen({super.key});

  @override
  State<PrivacyAndSecurtyScreen> createState() =>
      _PrivacyAndSecurtyScreenState();
}

class _PrivacyAndSecurtyScreenState extends State<PrivacyAndSecurtyScreen> {
  final bool isPaswword = true;

  final reUse = ReUse();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final passwordValidator = MultiValidator([
      RequiredValidator(errorText: 'required_field'.tr()),
      MaxLengthValidator(20, errorText: 'max_pass_limit'.tr()),
      MinLengthValidator(8, errorText: 'min_pass_limit'.tr()),
      PatternValidator(r'(?=.*?[#?!@$%^&*-])',
          errorText: 'specialChar_err'.tr())
    ]);
    final showPasswordProvider =
        Provider.of<ShowPasswordProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
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
                        'privacy_security'.tr(),
                        style: GoogleFonts.yantramanav(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: blackkColor,
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 48.h,
                    ),
                    Text('current_pass'.tr(),
                        style: GoogleFonts.yantramanav(
                          color: blackColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    SizedBox(
                      height: 13.h,
                    ),
                    CstmTextFieldTemplate(
                      validator: passwordValidator,
                      onTap: showPasswordProvider.showpassFunction,
                      hideText: showPasswordProvider.hidePass,
                      isPassword: showPasswordProvider.hidePass,
                      labelText: 'current_pass'.tr(),
                      ObscuringCharacter: '*',
                      hintText: '*********',
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Text('enter_new_password'.tr(),
                        style: GoogleFonts.yantramanav(
                          color: blackColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    SizedBox(
                      height: 13.h,
                    ),
                    CstmTextFieldTemplate(
                      validator: passwordValidator,
                      onTap: showPasswordProvider.showpassFunction,
                      hideText: showPasswordProvider.hidePass,
                      isPassword: showPasswordProvider.hidePass,
                      labelText: 'enter_new_password'.tr(),
                      ObscuringCharacter: '*',
                      hintText: '************',
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Text('confirm_New_Password'.tr(),
                        style: GoogleFonts.yantramanav(
                          color: blackkColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        )),
                    SizedBox(
                      height: 13.h,
                    ),
                    CstmTextFieldTemplate(
                      validator: passwordValidator,
                      onTap: showPasswordProvider.showpassFunction,
                      hideText: showPasswordProvider.hidePass,
                      isPassword: showPasswordProvider.hidePass,
                      labelText: 'confirm_New_Password'.tr(),
                      ObscuringCharacter: '*',
                      hintText: '************',
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.error_outline_sharp,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 9.w,
                        ),
                        Text(
                          'password_Instruction'.tr(),
                          style: GoogleFonts.yantramanav(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: lighttGreyColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 231.h,
                    ),
                    SizedBox(
                      width: 327.w,
                      height: 47.h,
                      child: BlueBtn(
                        Horizentalpading: 1.0,
                        title: 'update'.tr(),
                        onPressed: () => privacyandsecurityFunc(),
                      ),
                    ),
                    SizedBox(
                      height: 45.h,
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }

  void privacyandsecurityFunc() {
    if (_formKey.currentState!.validate()) {
      reUse.goBack(context);
      return;
    }
  }
}
