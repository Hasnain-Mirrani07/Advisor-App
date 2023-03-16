import 'package:advisor_user_app/ui/pages/auth/privacyAnd_Security/privacyAndSecurity_screen.dart';
import 'package:advisor_user_app/ui/pages/main/settings/settingScreen_widgets/image_picker.dart';
import 'package:advisor_user_app/ui/pages/main/settings/settingScreen_widgets/setting_appbar.dart';
import 'package:advisor_user_app/ui/pages/main/settings/settingScreen_widgets/settings_fields.dart';
import 'package:advisor_user_app/ui/shared/widgets/blue_btn.dart';
import 'package:advisor_user_app/ui/shared/widgets/delete_dialogbox.dart';
import 'package:advisor_user_app/ui/shared/widgets/img_container.dart';
import 'package:advisor_user_app/utils/assets.dart';
import 'package:advisor_user_app/utils/constants.dart';
import 'package:advisor_user_app/utils/re_use.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/colors.dart';

class SettingsScreenBody extends StatefulWidget {
  static const id = '/SettingsScreen';
  const SettingsScreenBody({Key? key}) : super(key: key);

  @override
  State<SettingsScreenBody> createState() => _SettingsScreenBodyState();
}

class _SettingsScreenBodyState extends State<SettingsScreenBody> {
  bool val = true;

  @override
  Widget build(BuildContext context) {
    final reUse = ReUse();
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 34.h,
                ),
                const SettingAppBar(),
                SizedBox(
                  height: 25.h,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: lightBluishColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            //   MyPage();
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                                left: 15, top: 12, bottom: 12, right: 17),
                            width: 61.w,
                            height: 63.h,
                            decoration: const BoxDecoration(
                              color: whiteColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        //  SizedBox(width: 17.21.w),
                        Padding(
                          padding: const EdgeInsets.only(top: 19.0, bottom: 24),
                          child: Column(
                            children: [
                              Text(
                                'User Name',
                                style: GoogleFonts.yantramanav(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  color: whiteColor,
                                ),
                              ),
                              Text(
                                'Country Name',
                                style: GoogleFonts.yantramanav(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                  color: whiteColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(36.0),
                          child: ImgContainer(
                              imgPath: farwordIcon,
                              widthC: 18.w,
                              heightC: 12.h),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 31.h,
                ),
                Text('user_personalization'.tr(),
                    style: GoogleFonts.yantramanav(
                      color: blackColor,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                    )),
                SizedBox(
                  height: 33.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteshadeF8Color,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 20.h,
                          bottom: 20.h,
                        ),
                        child: SettingsFields(
                          title: 'manage_account',
                          img: settingsicon,
                          widthC: 18.w,
                          heightC: 18.h,
                          onTap: () => reUse.goToManageAccountScreen(context),
                        ),
                      ),
                      divider,
                      Padding(
                        padding: EdgeInsets.only(
                          top: 20.h,
                          bottom: 20.h,
                        ),
                        child: SettingsFields(
                          title: 'privacy_security',
                          img: createUserPinIcon,
                          widthC: 18.w,
                          heightC: 24.h,
                          onTap: () =>
                              reUse.goToPrivacyAndSecurtyScreen(context),
                        ),
                      ),
                      divider,
                      Padding(
                        padding: EdgeInsets.only(
                          top: 20.h,
                          bottom: 20.h,
                        ),
                        child: SettingsFields(
                          title: 'watch_history',
                          img: clockIcon,
                          widthC: 18.w,
                          heightC: 18.h,
                          onTap: () => reUse.goToWatchHistoryScreen(context),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 22.h, bottom: 13.h),
                  child: Text('notification'.tr(),
                      style: GoogleFonts.yantramanav(
                        color: blackColor,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                SwitchListTile(
                  tileColor: whiteshadeF8Color,
                  secondary: ImgContainer(
                      imgPath: notificationIcon, widthC: 14.w, heightC: 19.h),
                  title: Text(
                    'push_notifications'.tr(),
                    style: GoogleFonts.yantramanav(
                      color: black39Color,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  value: val,
                  inactiveThumbColor: whiteColor,
                  activeColor: whiteColor,
                  activeTrackColor: lightBluishColor,
                  inactiveTrackColor: grey10Color,
                  onChanged: (bool value) {
                    val = value;
                    setState(() {});
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 22.h, bottom: 13.0.h),
                  child: Text(
                    'account_maintance'.tr(),
                    style: GoogleFonts.yantramanav(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                      color: blackColor,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteshadeF8Color,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 20.h,
                          bottom: 20.h,
                        ),
                        child: SettingsFields(
                          title: 'language',
                          img: languageIcon,
                          widthC: 18.w,
                          heightC: 18.h,
                          onTap: () => reUse.goToLanguageScreen(context),
                        ),
                      ),
                      divider,
                      Padding(
                        padding: EdgeInsets.only(
                          top: 20.h,
                          bottom: 20.h,
                        ),
                        child: GestureDetector(
                          onTap: () => _showDeleteAccountDialog(context),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(19.0),
                                child: Container(
                                    height: 18.h,
                                    width: 18.w,
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.all(10),
                                    decoration: const BoxDecoration(
                                      color: Colors.transparent,
                                      image: DecorationImage(
                                          image: AssetImage(deleteaccountIcon),
                                          fit: BoxFit.fill),
                                      // image:  DecorationImage(
                                      // image: SvgPicture.asset('images/example.svg',),
                                      //  fit: BoxFit.fill,
                                    )),
                              ),
                              SizedBox(
                                width: 4.14.w,
                              ),
                              Text('delete_account'.tr(),
                                  style: GoogleFonts.yantramanav(
                                    color: black39Color,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                  )),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(19.0),
                                child: Text('delete'.tr(),
                                    style: GoogleFonts.yantramanav(
                                      color: red1cColor,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
              ],
            )),
      ),
    );
  }

//------------------------------------------------------
  Future<void> _showDeleteAccountDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return DeleteAccountWarning();
      },
    );
  }
}
