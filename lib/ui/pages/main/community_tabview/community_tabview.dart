import 'package:advisor_user_app/ui/shared/widgets/user_shared_post.dart';
import 'package:advisor_user_app/utils/assets.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:advisor_user_app/utils/constants.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunityTabView extends StatefulWidget {
  const CommunityTabView({
    Key? key,
  }) : super(key: key);

  @override
  State<CommunityTabView> createState() => _CommunityTabViewState();
}

class _CommunityTabViewState extends State<CommunityTabView> {
  final searchFeaturesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          _searchTextField(),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              // physics: const NeverScrollableScrollPhysics(),
              itemBuilder: ((context, index) {
                return const UserSharedPost();
              }),
            ),
          )
        ],
      ),
    );
  }

  Widget _searchTextField() {
    return TextFormField(
      controller: searchFeaturesController,
      decoration: InputDecoration(
        hintText: "New app features",
        prefixIcon: const Icon(
          Icons.search,
          color: darkGreyColor,
        ),
        hintStyle: TextStyle(
          color: blackColor,
          fontSize: 13.sp,
          fontWeight: FontWeight.w500,
        ),
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        suffixIcon: GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.highlight_off,
            size: 20,
            color: black39Color,
          ),
        ),
      ),
    );
  }
}
