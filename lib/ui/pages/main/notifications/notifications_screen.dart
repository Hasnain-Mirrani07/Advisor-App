import 'package:advisor_user_app/ui/shared/widgets/cstm_notification_appbar.dart';
import 'package:advisor_user_app/ui/shared/widgets/date_notification_widget.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsScreenBody extends StatelessWidget {
  const NotificationsScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 33.h,
            ),
            const CstmNotificationAppBar(),
            SizedBox(
              height: 16.h,
            ),
            const DateNotificationColWidget(),
            const DateNotificationColWidget(),
          ],
        ),
      ),
    )));
  }
}
