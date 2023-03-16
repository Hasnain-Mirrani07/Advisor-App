import 'package:advisor_user_app/ui/shared/widgets/category_filter_widget.dart';
import 'package:advisor_user_app/ui/shared/widgets/cstm_country_appbar.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:advisor_user_app/utils/re_use.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryScreenBody extends StatelessWidget {
  CategoryScreenBody({Key? key}) : super(key: key);
  final List<String> list = [
    'Safety',
    'Flown away',
    'High pressssssssssssssure',
    'sdfds',
    'dggg',
    'fdsfsf'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 33.h,
        ),
        CstmCountryAppBar(
          title: 'categories'.tr(),
        ),
        SizedBox(
          height: 31.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.w, right: 40.w),
          child: Text(
            "browse_categories".tr(),
            style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: blackColor),
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        Padding(
          //outer spacing
          padding: EdgeInsets.only(left: 22.w, right: 24.w),
          child: Wrap(
            spacing: 8,
            runSpacing: 8, // space between items
            children: list
                .map((e) => GestureDetector(
                      onTap: () {
                        ReUse().gotoSafetyTootScreen(context);
                      },
                      child: CategoryFilter(
                        title: e,
                      ),
                    ))
                .toList(),
          ),
        ),

        // Expanded(
        //   child: MasonryGridView.count(
        //     crossAxisCount: 2,
        //     mainAxisSpacing: 12.h,
        //     crossAxisSpacing: 16.w,
        //     itemCount: list.length,
        //     itemBuilder: (context, index) {
        //       //print("filteredList[index].isSelected=${filteredList[index].isSelected}");

        //       return CategoryFilter(
        //         title: list[index],
        //       );
        //     },
        //   ),
        // )
      ],
    );
  }
}
