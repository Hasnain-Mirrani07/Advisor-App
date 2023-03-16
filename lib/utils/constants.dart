import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

final outlineInputBorder = OutlineInputBorder(
  borderSide: const BorderSide(width: 1.0, color: lightGreyColor),
  borderRadius: BorderRadius.circular(10.0),
);

var postShadowBox = BoxShadow(
  offset: const Offset(0, 1),
  color: blackColor.withOpacity(0.08),
  blurRadius: 13,
  spreadRadius: 0.0,
);
const underlineInputBorder = UnderlineInputBorder(
  borderSide: BorderSide(width: 1, color: offWhiteColor),
);

final divider = Divider(
  indent: 43.w,
  endIndent: 44,
  color: greyE3Color,
  thickness: 1.h,
);
