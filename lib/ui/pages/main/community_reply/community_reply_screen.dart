import 'package:advisor_user_app/ui/shared/widgets/icon_text_row.dart';
import 'package:advisor_user_app/utils/assets.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:advisor_user_app/utils/constants.dart';
import 'package:advisor_user_app/utils/re_use.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommunityReplyScreen extends StatelessWidget {
  static const id = '/community_reply_screen';
  const CommunityReplyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final reUse = ReUse();
    var circularBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
        borderSide: const BorderSide(width: 0.0, color: Colors.transparent));
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              reUse.goBack(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: blackkColor,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {},
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
                              border:
                                  Border.all(width: 1.2.w, color: whiteColor),
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
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16.sp),
                                children: const [
                                  TextSpan(
                                      text: 'Marina Jade ',
                                      style: TextStyle(
                                        color: blackColor,
                                      )),
                                  TextSpan(
                                      text: 'Shared ',
                                      style:
                                          TextStyle(color: lighterGreyColor)),
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
                                fontWeight: FontWeight.w500,
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
                    Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const IconTextRow(
                            iconPath: heartIcon,
                            text: '10',
                          ),
                          SizedBox(
                            width: 35.w,
                          ),
                          const IconTextRow(
                            iconPath: commentIcon,
                            text: '0 Response',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    userCmnt(),
                  ],
                ),
              ),
            ),
            Container(
              //height: 100,
              // width: 100,
              // color: Colors.yellow,
              margin: EdgeInsets.symmetric(horizontal: 23.5.w),
              child: TextFormField(
                // controller: null,
                onChanged: (value) {},
                style: TextStyle(
                  color: blackColor,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(right: 5.w, left: 5.w),
                  border: circularBorder,
                  enabledBorder: circularBorder,
                  focusedBorder: circularBorder,
                  // labelText: 'Type Message..',
                  prefixIcon: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 3.r, vertical: 7.r),
                    child: Image.asset(
                      'assets/icons/emoji_icon.png',
                      width: 18.r,
                      height: 18.r,
                    ),
                  ),
                  hintText: 'Type Message..',
                  hintStyle: TextStyle(
                    color: lighterGreyColor,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  fillColor: greyEfColor,
                  filled: true,
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        filePickerIcon,
                        width: 16.w,
                        height: 18.w,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        width: 36.r,
                        height: 36.r,
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.r, vertical: 9.r),
                        decoration: const BoxDecoration(
                          color: lightBluishColor,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(micIcon),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }

  Widget userCmnt() {
    return Padding(
      padding: EdgeInsets.only(left: 15.w),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 30.w,
                height: 30.w,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                width: 12.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Marina Jade",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '1h',
                    style: TextStyle(
                      color: lighterGreyColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.w, right: 25.w),
            child: Text(
              "That’s a fantastic new app feature. You & your team old an excellent job of applying user testing feedback.",
              style: TextStyle(
                fontSize: 14.sp,
                color: blackColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const IconTextRow(
                  iconPath: heartIcon,
                  text: '10',
                ),
                SizedBox(
                  width: 20.w,
                ),
                const IconTextRow(
                  iconPath: replyIcon,
                  text: 'Reply',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
