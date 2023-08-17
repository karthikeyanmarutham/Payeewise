/// * --------------------------------------------------------------------------- * ///
/// 
/// project name  : payeewise
/// devloper name : karthikeyan maruthachalam
/// created date  : Aug 17, 2023 5:30 PM
/// 
///  * --------------------------------------------------------------------------- * ///

import 'package:flutter/material.dart';

import '../../dashboard/presentation/dashboard_page.dart';

class RootProvider extends ChangeNotifier {
  int _tabIndex = 0;
  Widget _body = DashboardPage();

  set setTabIndex(int index) {
    _tabIndex = index;
    notifyListeners();
  }

  int get tabIndex => _tabIndex;

   Widget get body{
    switch (_tabIndex) {
      case 0:
        return const DashboardPage();
      case 1:
        return Container(color: Colors.amber,);
      case 2:
        return Container(color: Colors.amber,);
      case 3:
        return Container(color: Colors.amber,);
      case 4:
        return Container(color: Colors.amber,);
      default:
        return const DashboardPage();
    }
  }
}