import 'package:advisor_user_app/ui/pages/auth/countrylist/countrylist_screen.dart';
import 'package:advisor_user_app/ui/shared/widgets/categories_filter_list_widget.dart';
import 'package:advisor_user_app/ui/shared/widgets/cstm_country_appbar.dart';
import 'package:advisor_user_app/ui/shared/widgets/most_watched_listview.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../auth/countrylist/countrylist_provider.dart';

class DiscoverScreenBody extends StatelessWidget {
  static const id = '/DiscoverScreenBody';

  String countryName;

  DiscoverScreenBody({super.key, this.countryName = 'Austrailia'});

  @override
  Widget build(BuildContext context) {
    final countrylistprovider =
        Provider.of<CountryListProvider>(context, listen: true);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 33.h,
        ),
        GestureDetector(
          child: CstmCountryAppBar(
            countryName: countrylistprovider.country,
            title: 'discover'.tr(),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CountryListScreen()),
            );
          },
        ),
        SizedBox(
          height: 28.h,
        ),
        Container(
          // height: 141.h,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(11.0),
            //image: DecorationImage(image: AssetImage('assets/images/')),
          ),
          margin: EdgeInsets.symmetric(horizontal: 24.w),
          child: Padding(
            padding: EdgeInsets.only(top: 9.h, left: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "30",
                      style: GoogleFonts.yantramanav(
                        fontSize: 24.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Text(
                      "%",
                      style: GoogleFonts.yantramanav(
                        fontSize: 22.sp,
                        color: lightBluishColor,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      width: 9.w,
                    ),
                    Text(
                      "Today’s Special",
                      style: GoogleFonts.yantramanav(
                        fontSize: 14.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Get a discount for every service order!",
                    style: GoogleFonts.yantramanav(),
                  ),
                ),
                SizedBox(
                  height: 9.h,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 13.h),
                  // alignment: AlignmentDirectional.topStart,
                  padding:
                      EdgeInsets.symmetric(vertical: 7.h, horizontal: 22.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.5),
                      gradient: LinearGradient(colors: [
                        lightBluishColor,
                        lightBluishColor.withOpacity(0.47)
                      ])),
                  child: Text(
                    "Only valid for today",
                    style: GoogleFonts.yantramanav(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 32.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 23.w, right: 21.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "categories".tr(),
                style: GoogleFonts.yantramanav(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: blackColor),
              ),
              Text(
                "see_all".tr(),
                style: GoogleFonts.yantramanav(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: greyColor),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 17.h,
        ),
        const CategoriesFiltersList(),
        SizedBox(
          height: 28.h,
        ),
        Container(
          margin: EdgeInsetsDirectional.only(end: 23.w, start: 23.w),
          child: Text(
            "most_watch".tr(),
            style: GoogleFonts.yantramanav(
              fontSize: 16.sp,
              color: blackColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        const MostWatchedVideoWidget()
      ],
    );
  }
}
