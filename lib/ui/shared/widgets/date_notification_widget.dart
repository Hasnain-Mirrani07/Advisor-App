import 'package:advisor_user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'person_notif_widget.dart';

class DateNotificationColWidget extends StatelessWidget {
  const DateNotificationColWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "Today 14 Oct 2022",
            style: TextStyle(
                color: lightGreyColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: ((context, index) => const PersonNotificationWidget()),
        )
      ],
    );
  }
}
