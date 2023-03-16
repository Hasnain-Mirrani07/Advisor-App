import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CstmTabBarProvider with ChangeNotifier {
  TabController? tabController;

  void changeController(TabController? tabController) {
    this.tabController = tabController;
    notifyListeners();
  }
}
