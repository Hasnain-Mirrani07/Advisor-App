import 'package:advisor_user_app/ui/pages/main/community_tabview/community_tabview.dart';
import 'package:advisor_user_app/ui/pages/main/experts_tabview/experts_tabview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/providers/tab_bar_provider.dart';

class CustmTabBarView extends StatelessWidget {
  const CustmTabBarView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabProvider = Provider.of<CstmTabBarProvider>(context, listen: true);

    return Expanded(
      child: TabBarView(
        controller: tabProvider.tabController,
        children: const [
          // Community tab bar view widget
          //Container(),
          CommunityTabView(),
          // Experts tab bar view widget
          ExpertsTabView(),
        ],
      ),
    );
  }
}
