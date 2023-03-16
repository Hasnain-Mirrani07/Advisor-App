import 'package:advisor_user_app/ui/pages/main/category/category_screen.dart';
import 'package:advisor_user_app/ui/pages/main/home/discover_home_screen.dart';
import 'package:advisor_user_app/ui/pages/main/notifications/notifications_screen.dart';
import 'package:advisor_user_app/ui/pages/main/settings/settings_screen.dart';
import 'package:flutter/cupertino.dart';

class BottomNavbarProvider with ChangeNotifier {
  int _currentScreenIndex = 0;
  final List<Widget> _screensListWidget = [
    DiscoverScreenBody(),
    CategoryScreenBody(),
    const NotificationsScreenBody(),
    const SettingsScreenBody(),
  ];
  //-----------------------------------
  int get getCurrentIndex => _currentScreenIndex;
  //-----------------------------------
  List<Widget> get getScreensList => _screensListWidget;
  //-----------------------------------
  void updateIndex(int index) {
    _currentScreenIndex = index;
    notifyListeners();
  }
  //----------------------------------

}
