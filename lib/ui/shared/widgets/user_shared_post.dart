import 'package:advisor_user_app/ui/pages/main/community_tabview/community_tabview.dart';
import 'package:advisor_user_app/ui/shared/widgets/icon_text_row.dart';
import 'package:advisor_user_app/utils/assets.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:advisor_user_app/utils/constants.dart';
import 'package:advisor_user_app/utils/re_use.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserSharedPost extends StatelessWidget {
  const UserSharedPost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final reUse = ReUse();
    return GestureDetector(
      onTap: () {
        //  reUse.(context);
      },
      child: Container(
        padding: EdgeInsets.only(
            top: 14.14.h, bottom: 17.2.h, left: 15.h, right: 18.06.h),
        decoration: BoxDecoration(
          color: whiteColor,
          boxShadow: [postShadowBox],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Badge(
                  toAnimate: false,
                  badgeColor: Colors.transparent,
                  elevation: 0.0,
                  padding: const EdgeInsets.only(right: 9, bottom: 9),
                  position: BadgePosition.bottomEnd(),
                  badgeContent: Container(
                    width: 10.w,
                    height: 10.w,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(width: 1.2.w, color: whiteColor),
                      shape: BoxShape.circle,
                    ),
                  ),
                  child: Container(
                    width: 40.w,
                    height: 40.w,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                SizedBox(
                  width: 12.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 16.sp),
                        children: const [
                          TextSpan(
                              text: 'Marina Jade ',
                              style: TextStyle(
                                color: blackColor,
                              )),
                          TextSpan(
                              text: 'Shared ',
                              style: TextStyle(color: lighterGreyColor)),
                          TextSpan(
                              text: 'Post',
                              style: TextStyle(
                                color: blackColor,
                              ))
                        ],
                      ),
                      textScaleFactor: 1,
                    ),
                    Text(
                      '1h',
                      style: TextStyle(
                        color: lighterGreyColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 17.h,
            ),
            Text(
              "That’s a fantastic new app feature. You & your team old an excellent job of applying user testing feedback.",
              style: TextStyle(
                fontSize: 14.sp,
                color: blackColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Divider(
              thickness: 0.75.w,
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const IconTextRow(
                    iconPath: heartIcon,
                    text: '10',
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  const IconTextRow(
                    iconPath: commentIcon,
                    text: '0 Response',
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  const IconTextRow(
                    iconPath: replyIcon,
                    text: 'Reply',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
