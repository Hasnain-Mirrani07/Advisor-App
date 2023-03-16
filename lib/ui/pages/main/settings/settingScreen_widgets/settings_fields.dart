import 'package:advisor_user_app/utils/assets.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsFields extends StatelessWidget {
  final String title;
  final String img;
  final double? widthC;
  final double? heightC;
  final void Function()? onTap;

  const SettingsFields({
    super.key,
    required this.title,
    required this.img,
    required this.onTap,
    this.heightC = 24,
    this.widthC = 18,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Container(
                height: heightC,
                width: widthC,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image:
                      DecorationImage(image: AssetImage(img), fit: BoxFit.fill),
                  // image:  DecorationImage(
                  // image: SvgPicture.asset('images/example.svg',),
                  //  fit: BoxFit.fill,
                )),
          ),
          SizedBox(
            width: 4.14.w,
          ),
          Text('$title'.tr(),
              style: GoogleFonts.yantramanav(
                color: black39Color,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500,
              )),
        ],
      ),
    );
  }
}
