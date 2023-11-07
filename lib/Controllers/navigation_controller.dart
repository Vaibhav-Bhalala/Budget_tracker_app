import 'package:budget_tracker_app/Model/navigation_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  NavigationModel navigationModel = NavigationModel(selectedIndex: 0);
  PageController pageController = PageController();

  void changeTab({required int val}) {
    navigationModel.selectedIndex = val;

    pageController.animateToPage(val,
        duration: Duration(milliseconds: 200), curve: Curves.linear);
    update();
  }
}
