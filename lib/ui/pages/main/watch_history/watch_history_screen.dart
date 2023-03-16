import 'package:advisor_user_app/ui/shared/widgets/most_watched_video_widget.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:advisor_user_app/utils/re_use.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WatchHistoryScreen extends StatelessWidget {
  static const id = '/watch_history';
  const WatchHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final reUse = ReUse();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            reUse.goBack(context);
          },
          child: const Icon(
            Icons.arrow_back_sharp,
            color: blackkColor,
          ),
        ),
        title: Text(
          "watch_history".tr(),
          style: TextStyle(
            color: blackkColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 27.w),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: ((context, index) => const MostWatchedVideoo()),
        ),
      ),
    );
  }
}
