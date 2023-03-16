import 'package:advisor_user_app/utils/colors.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:advisor_user_app/utils/constants.dart';
import 'package:advisor_user_app/utils/re_use.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpertProfileScreen extends StatefulWidget {
  static const id = '/ExpertProfileScreen';
  const ExpertProfileScreen({super.key});

  @override
  State<ExpertProfileScreen> createState() => _ExpertProfileScreenState();
}

class _ExpertProfileScreenState extends State<ExpertProfileScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    final reUse = ReUse();
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: 375.w,
                height: 261.h,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [blueD7Color, lightBluishColor],
                    // begin: Alignment.bottomLeft,
                    // end: Alignment.topRight,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25.w,
                      ),
                      child: Flexible(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10.h),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: IconButton(
                                      onPressed: () => reUse.goBack(context),
                                      icon: const Icon(
                                        Icons.arrow_back,
                                        color: whiteColor,
                                        size: 20,
                                      )),
                                ),
                              ),
                              Flexible(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 57.h),
                                      child: Container(
                                        width: 77.w,
                                        height: 77.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: grey10Color,
                                              width: 3.h,
                                              style: BorderStyle
                                                  .solid), //Border.all

                                          shape: BoxShape.circle,
                                          color: blackColor,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 13.h,
                                    ),
                                    Text(
                                      //   maxLines: 2,
                                      textAlign: TextAlign.center,
                                      'Elizabeth Jade',
                                      style: GoogleFonts.yantramanav(
                                        color: whiteColor,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      overflow: TextOverflow.fade,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10.h),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                      onPressed: () => reUse.goBack(context),
                                      icon: const Icon(
                                        Icons.more_vert_rounded,
                                        color: whiteColor,
                                        size: 20,
                                      )),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 37.h),
                      child: SizedBox(
                        width: 276.w,
                        child: Text(
                          //   maxLines: 2,
                          textAlign: TextAlign.center,

                          'Life is like a circle Keep Rolling everyday! @Fitnessfreak',
                          style: GoogleFonts.yantramanav(
                            wordSpacing: 1,
                            letterSpacing: 1,
                            color: whiteColor,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 44.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          '22k',
                          style: GoogleFonts.yantramanav(
                            color: blackColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'vedios'.tr(),
                          style: GoogleFonts.yantramanav(
                            color: blackColor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '1.3M',
                          style: GoogleFonts.yantramanav(
                            color: blackColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'followers'.tr(),
                          style: GoogleFonts.yantramanav(
                            color: blackColor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '25',
                          style: GoogleFonts.yantramanav(
                            color: blackColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'following'.tr(),
                          style: GoogleFonts.yantramanav(
                            color: blackColor,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              Divider(
                height: 2.h,
                indent: 1,
                endIndent: 1,
                color: grey10Color,
              ),
            ],
          ),
          Positioned(
            top: 260,
            left: 140,
            child: Container(
              alignment: Alignment.center,
              width: 96.w,
              height: 42.h,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(23),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 1),
                    color: blackColor.withOpacity(0.08),
                    blurRadius: 13,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
              child: Text('follow'.tr(),
                  style: GoogleFonts.yantramanav(
                    color: blackColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
