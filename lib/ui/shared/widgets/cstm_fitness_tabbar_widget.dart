import 'package:advisor_user_app/core/providers/tab_bar_provider.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CstmTopTabbar extends StatefulWidget {
  const CstmTopTabbar({
    Key? key,
  }) : super(key: key);

  @override
  State<CstmTopTabbar> createState() => _CstmTopTabbarState();
}

class _CstmTopTabbarState extends State<CstmTopTabbar>
    with SingleTickerProviderStateMixin {
  bool isInit = false;
  @override
  void initState() {
    isInit = true;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (isInit) {
      Provider.of<CstmTabBarProvider>(context, listen: true).tabController =
          TabController(vsync: this, length: 2);
      isInit = false;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final tabProvider = Provider.of<CstmTabBarProvider>(context, listen: true);
    return Container(
      height: 46.0,
      padding: EdgeInsets.all(6.h),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.w,
          color: lineGreyColor,
        ),
        borderRadius: BorderRadius.circular(
          25.0,
        ),
      ),
      child: TabBar(
        controller: tabProvider.tabController,
        onTap: (index) {
          tabProvider.tabController!.index = index;
          tabProvider.changeController(tabProvider.tabController);
        },
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16.5,
          ),
          color: lightBluishColor,
        ),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
        tabs: const [
          Tab(
            text: 'Community',
          ),
          Tab(
            text: 'Experts',
          ),
        ],
      ),
    );
  }
}
