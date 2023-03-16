// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:advisor_user_app/ui/pages/auth/verify_email/verify_email_components/otp_widget.dart';
import 'package:advisor_user_app/ui/shared/widgets/blue_btn.dart';
import 'package:advisor_user_app/ui/shared/widgets/cstm_text_field.dart';
import 'package:advisor_user_app/ui/shared/widgets/img_container.dart';
import 'package:advisor_user_app/utils/assets.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class LanguageScreen extends StatefulWidget {
  static const id = '/language_screen';
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

enum Language { english, arabic }

bool selectedLanguage = true;
var selectlang;

class _LanguageScreenState extends State<LanguageScreen> {
  Language? _language = selectlang;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 34.h,
                ),
                Row(children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back,
                      color: blackkColor,
                    ),
                  ),
                  SizedBox(
                    width: 18.h,
                  ),
                  Text(
                    'language'.tr(),
                    style: GoogleFonts.yantramanav(
                      color: radioblackColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ]),
                Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    ListTile(
                        leading: ImgContainer(
                            imgPath: englishIcon, widthC: 20.w, heightC: 20.h),
                        title: Text(
                          'English',
                          style: GoogleFonts.yantramanav(
                            color: radioblackColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        trailing: Radio<Language>(
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => lightBluishColor),
                          value: Language.english,
                          groupValue: _language,
                          onChanged: (Language? value) {
                            setState(() {
                              _language = value;
                              selectedLanguage = true;

                              //  context.setLocale(const Locale('en', 'US'));
                            });
                          },
                        )),
                    Divider(
                      indent: 24.w,
                      endIndent: 24.w,
                      thickness: 1.h,
                      color: whiteF2Color,
                    ),
                    ListTile(
                        tileColor: Colors.white,
                        leading: ImgContainer(
                            imgPath: arabicIcon, widthC: 20.w, heightC: 20.h),
                        title: Text(
                          'arabic'.tr(),
                          style: GoogleFonts.yantramanav(
                            color: blackColor,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        trailing: Radio<Language>(
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => lightBluishColor),
                          value: Language.arabic,
                          groupValue: _language,
                          onChanged: (Language? value) {
                            setState(() {
                              _language = value;
                              selectedLanguage = false;
                              // context.setLocale(const Locale('ar', 'SA'));
                            });
                          },
                        )),
                  ],
                ),
                //SizedBox(height: 194.h),
                Spacer(),
                BlueBtn(
                  Horizentalpading: 1.0,
                  title: 'continue'.tr(),
                  onPressed: () {
                    setState(() {
                      selectedLanguage
                          ? context.setLocale(const Locale('en', 'US'))
                          : context.setLocale(const Locale('ar', 'SA'));
                      selectedLanguage
                          ? selectlang = Language.english
                          : selectlang = Language.arabic;
                    });
                  },
                ),
                SizedBox(
                  height: 45.h,
                )
              ],
            )),
      ),
    );
  }
}
