import 'package:advisor_user_app/core/providers/bottom_nav_provider.dart';
import 'package:advisor_user_app/ui/shared/widgets/btm_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  static const id = '/main_screen';
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final btmNavBarProvider = Provider.of<BottomNavbarProvider>(context);
    return SafeArea(
        child: Scaffold(
      body: btmNavBarProvider.getScreensList[btmNavBarProvider.getCurrentIndex],
      bottomNavigationBar: const CstmBtmNavBar(),
    ));
  }
}
