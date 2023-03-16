import 'package:advisor_user_app/ui/shared/widgets/cstm_fitness_tabbar_widget.dart';
import 'package:advisor_user_app/ui/shared/widgets/cstm_tab_bar_view.dart';
import 'package:advisor_user_app/utils/assets.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:advisor_user_app/utils/re_use.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SafetyToolScreen extends StatelessWidget {
  static const id = '/safety_tool';

  SafetyToolScreen({Key? key}) : super(key: key);
  final reUse = ReUse();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      //backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            reUse.goBack(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: blackColor,
            size: 20,
          ),
        ),
        title: Text(
          "Fitness",
          style: TextStyle(
            color: blackkColor,
            fontSize: 18.sp,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              inactiveHomeIcon,
              color: black39Color,
              width: 18.w,
              height: 18.w,
            ),
          ),
          SizedBox(
            width: 10.w,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.5.w),
            child: const CstmTopTabbar(),
          ),
          SizedBox(
            height: 24.h,
          ),
          const CustmTabBarView(),
        ],
      ),
    ));
  }
}
