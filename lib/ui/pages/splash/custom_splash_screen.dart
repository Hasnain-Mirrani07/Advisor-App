import 'package:advisor_user_app/ui/pages/auth/signin/signin_screen.dart';
import 'package:advisor_user_app/ui/pages/auth/signup/signup_screen.dart';
import 'package:advisor_user_app/ui/shared/widgets/blue_btn.dart';
import 'package:advisor_user_app/utils/assets.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:advisor_user_app/utils/constants.dart';
import 'package:advisor_user_app/utils/re_use.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSplashScreen extends StatefulWidget {
  static const id = '/';
  const CustomSplashScreen({Key? key}) : super(key: key);

  @override
  State<CustomSplashScreen> createState() => _CustomSplashScreenState();
}

class _CustomSplashScreenState extends State<CustomSplashScreen> {
  //---------------------------------------
  @override
  void initState() {
    super.initState();
  }

  //---------------------------------------
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  //---------------------------------------
  @override
  Widget build(BuildContext context) {
    return SafeArea(

        // width: MediaQuery.of(context).size.width * 1,
        // height: MediaQuery.of(context).size.height * 1,
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: darkBlueColor,
      body: Column(
        children: [
          // height: MediaQuery.of(context).size.height * 0.5,
          // color: Colors.yellow,
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: 0.0,
                  top: 0.0,
                  child: Container(
                    //alignment: Alignment.topLeft,
                    height: 162.h,
                    width: 100.w,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(13.0),
                            topLeft: Radius.circular(13.0)),
                        image: DecorationImage(
                            image: AssetImage(
                              splashImg1,
                            ),
                            fit: BoxFit.cover)),
                    // child: Image.asset(
                    //   'assets/images/img1.png',
                    //   height: 162.h,
                    //   width: 126.w,
                    // ),
                  ),
                ),

                Positioned(
                  left: 105.w,
                  child: Container(
                    height: 75.h,
                    width: 126.w,
                    alignment: Alignment.topLeft,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(13.0),
                            bottomRight: Radius.circular(13.0)),
                        image: DecorationImage(
                            image: AssetImage(splashImg2), fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                  right: -5.w,
                  top: 0.h,
                  child: Container(
                    height: 41.h,
                    width: 146.w,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(13.0),
                            bottomRight: Radius.circular(13.0)),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              splashImg3,
                            ))),
                  ),
                ),
                Positioned(
                  left: 0.w,
                  top: 170.h,
                  // bottom: 20.w,
                  // top: 10.w,
                  child: Container(
                    height: 162.h,
                    width: 100.w,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)),
                        image: DecorationImage(
                            image: AssetImage(splashImg4), fit: BoxFit.cover)),
                  ),
                ),

                Positioned(
                  left: 105.w,
                  top: 85.h,
                  // bottom: 20.w,
                  // top: 10.w,
                  child: Container(
                    height: 138.h,
                    width: 126.w,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13.0)),
                        image: DecorationImage(
                            image: AssetImage(splashImg10), fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                  // bottom: 20.w,
                  top: 235.h,
                  left: 105.w,
                  child: Container(
                    height: 162.h,
                    width: 126.w,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13.0)),
                        image: DecorationImage(
                          image: AssetImage(splashImg8),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                Positioned(
                  right: 56.w,

                  // bottom: 20.w,
                  top: 85.h,
                  child: Container(
                    height: 45.h,
                    width: 52.w,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13.0)),
                        image: DecorationImage(
                          image: AssetImage(splashImg9),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                Positioned(
                  right: 35.w,
                  top: 140.h,
                  child: Container(
                    height: 138.h,
                    width: 102.w,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13.0)),
                        image: DecorationImage(
                            image: AssetImage(splashImg5), fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                  right: -10.w,
                  top: 250.h,
                  child: Container(
                    height: 86.h,
                    width: 35.w,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13.0)),
                        image: DecorationImage(
                            image: AssetImage(splashImg7), fit: BoxFit.cover)),
                  ),
                ),
                Positioned(
                  right: -10.w,
                  top: 58.h,
                  child: Container(
                    height: 86.h,
                    width: 35.w,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13.0)),
                        image: DecorationImage(
                            image: AssetImage(splashImg6), fit: BoxFit.cover)),
                  ),
                ),
                // Positioned(
                //   right: -10.w,
                //   top: 180.h,
                //   child: Container(
                //     height: 86.h,
                //     width: 35.w,
                //     decoration: const BoxDecoration(
                //         borderRadius:
                //             BorderRadius.all(Radius.circular(13.0)),
                //         image: DecorationImage(
                //             image: AssetImage(splashImg7),
                //             fit: BoxFit.cover)),
                //   ),
                // ),
                //img11.png
                //img12.png
                Positioned(
                  right: -10.w,
                  top: 154.h,
                  child: Container(
                    height: 86.h,
                    width: 35.w,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(13.0)),
                        image: DecorationImage(
                            image: AssetImage(splashImg11), fit: BoxFit.cover)),
                  ),
                ),
              ],
            ),
          ),

          Center(
            child: Image.asset(
              logoImg,
              height: 74.w,
              width: 73.w,
            ),
          ),
          Text(
            "advisor",
            style: TextStyle(
              fontSize: 27.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 29.h,
          ),
          Text(
            "splash_statement".tr(),
            style: TextStyle(
              color: whiteColor,
              fontSize: 15.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          BlueBtn(
            title: 'continue'.tr(),
            color: lightBluishColor,
            onPressed: () {
              // context.setLocale(const Locale('ar', 'SA'));
              ReUse().goToOffSignInScreen(context);
            },
          ),
          SizedBox(
            height: 40.h,
          )
        ],
      ),
    ));
  }
}
