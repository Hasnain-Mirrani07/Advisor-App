import 'package:advisor_user_app/ui/shared/widgets/category_filter_widget.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesFiltersList extends StatelessWidget {
  const CategoriesFiltersList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => const CategoryFilter())),
    );
  }
}
