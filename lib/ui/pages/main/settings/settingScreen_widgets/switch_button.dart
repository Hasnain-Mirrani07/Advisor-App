// import 'package:advisor_user_app/ui/pages/auth/signin/signin_screen.dart';
// import 'package:advisor_user_app/ui/pages/auth/signup/signup_screen.dart';
// import 'package:advisor_user_app/ui/shared/widgets/blue_btn.dart';
// import 'package:advisor_user_app/ui/shared/widgets/img_container.dart';
// import 'package:advisor_user_app/utils/assets.dart';
// import 'package:advisor_user_app/utils/colors.dart';
// import 'package:advisor_user_app/utils/constants.dart';
// import 'package:advisor_user_app/utils/re_use.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Splash extends StatelessWidget {
//   const Splash({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       // width: MediaQuery.of(context).size.width * 1,
//       // height: MediaQuery.of(context).size.height * 1,
//       child: Scaffold(
//         resizeToAvoidBottomInset: true,
//         backgroundColor: darkBlueColor,
//         body: SingleChildScrollView(
//           child: Container(
//             width: MediaQuery.of(context).size.width * 1,
//             height: MediaQuery.of(context).size.height * 1,
//             child: Stack(children: [
//               Positioned(
//                 top: -7,
//                 left: -28,
//                 child: ImgContainer(
//                     imgPath: splashImg1, widthC: 126.w, heightC: 162.h),
//               ),
//               Positioned(
//                 top: -5,
//                 left: 150,
//                 child: ImgContainer(
//                     imgPath: splashImg2, widthC: 126.w, heightC: 162.h),
//               ),
//               Positioned(
//                 top: -,
//                 right: -10,
//                 child: ImgContainer(
//                     imgPath: splashImg3, widthC: 146.w, heightC: 162.h),
//               ),

//               //  bottom...........
//               Positioned(
//                 bottom: 30,
//                 child: Container(
//                   //   height: MediaQuery.of(context).size.height * .1,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Center(
//                         child: Image.asset(
//                           logoImg,
//                           height: 74.w,
//                           width: 73.w,
//                         ),
//                       ),
//                       Text(
//                         "advisor",
//                         style: TextStyle(
//                           fontSize: 27.sp,
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 29.h,
//                       ),
//                       Text(
//                         "splash_statement".tr(),
//                         style: TextStyle(
//                           color: whiteColor,
//                           fontSize: 15.sp,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 66.h,
//                       ),
//                       BlueBtn(
//                         title: 'continue'.tr(),
//                         color: lightBluishColor,
//                         onPressed: () {
//                           // context.setLocale(const Locale('ar', 'SA'));
//                           ReUse().goToOffSignInScreen(context);
//                         },
//                       ),
//                       SizedBox(
//                         height: 50.h,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ]),
//           ),
//         ),
//       ),
//     );
//   }
// }
