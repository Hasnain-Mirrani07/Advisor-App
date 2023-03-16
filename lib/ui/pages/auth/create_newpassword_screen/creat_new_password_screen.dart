import 'package:advisor_user_app/core/providers/showPassword_provider.dart';
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

class CreatNewPasswordScreen extends StatefulWidget {
  static const id = '/CreatNewPasswordScreen';

  const CreatNewPasswordScreen({super.key});

  @override
  State<CreatNewPasswordScreen> createState() => _CreatNewPasswordScreenState();
}

class _CreatNewPasswordScreenState extends State<CreatNewPasswordScreen> {
  var nameController;

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
    //  var size = MediaQuery.of(context).size;
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
                        width: 16.w,
                      ),
                      Text(
                        'create_new_passwaord'.tr(),
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: blackkColor,
                        ),
                      ),
                    ]),

                    SizedBox(
                      height: 65.h,
                    ),
                    Center(
                      child: ImgContainer(
                          imgPath: newPasswordIcon,
                          widthC: 95.6.h,
                          heightC: 111.h),
                    ),

                    SizedBox(
                      height: 65.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 26.w),
                      child: Text(
                        textAlign: TextAlign.center,
                        'must_different_pass'.tr(),
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: blackColor),
                      ),
                    ),
                    SizedBox(
                      height: 42.h,
                    ),
                    Container(
                      // alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(bottom: 13.w),
                      child: Text('enter_new_password'.tr(),
                          style: GoogleFonts.yantramanav(
                            color: blackColor,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    // SizedBox(
                    //   height: 13.h,
                    // ),
                    CstmTextFieldTemplate(
                      validator: passwordValidator,
                      onTap: showPasswordProvider.showpassFunction,
                      isPassword: showPasswordProvider.hidePass,
                      hideText: showPasswordProvider.hidePass,
                      labelText: 'enter_new_password'.tr(),
                      ObscuringCharacter: '*',
                      hintText: '************',
                    ),

                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      // alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(bottom: 13.w),
                      child: Text('confirm_New_Password'.tr(),
                          style: GoogleFonts.yantramanav(
                            color: blackkColor,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                    // SizedBox(
                    //   height: 13.h,
                    // ),

                    CstmTextFieldTemplate(
                      validator: passwordValidator,
                      onTap: showPasswordProvider.showpassFunction,
                      isPassword: showPasswordProvider.hidePass,
                      hideText: showPasswordProvider.hidePass,
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
                          width: 10.w,
                        ),
                        Text('password_Instruction'.tr(),
                            style: GoogleFonts.yantramanav(
                              color: lightGreyColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            )),
                      ],
                    ),

                    SizedBox(
                      height: 63.h,
                    ),

                    SizedBox(
                      width: 327.w,
                      height: 47.h,
                      child: BlueBtn(
                        Horizentalpading: 1.0,
                        title: 'update'.tr(),
                        onPressed: () => creatNewPass(),
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

  void creatNewPass() {
    if (_formKey.currentState!.validate()) {
      reUse.goToMainScreen(context);
      return;
    }
  }
}
