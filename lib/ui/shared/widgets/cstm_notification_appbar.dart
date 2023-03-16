import 'package:advisor_user_app/utils/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CstmNotificationAppBar extends StatelessWidget {
  const CstmNotificationAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "notification".tr(),
              style: TextStyle(
                color: blackkColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "activity".tr(),
              style: TextStyle(
                color: greyyColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.only(
            left: 11.h,
            top: 10.h,
            bottom: 10.h,
          ),
          decoration: BoxDecoration(
            color: lightBluishColor,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.search,
                color: whiteColor,
                size: 30,
              ),
              SizedBox(
                width: 18.4.w,
              ),
              Container(
                width: 27.w,
                height: 27.w,
                decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1.w,
                      color: whiteColor,
                    )),
              ),
              SizedBox(
                width: 8.w,
              )
            ],
          ),
        )
      ],
    );
  }
}
