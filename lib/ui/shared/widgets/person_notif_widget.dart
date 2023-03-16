import 'package:advisor_user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonNotificationWidget extends StatelessWidget {
  const PersonNotificationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
      child: Row(
        children: [
          Container(
            width: 52.w,
            height: 52.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Wade Warren",
                style: TextStyle(
                  color: blackColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Uploaded a new training video",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: blackColor),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "5h",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: textGreyColor50),
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.arrow_forward_ios,
              color: blackkColor,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
