import 'package:budget_tracker_app/Controllers/navigation_controller.dart';
import 'package:budget_tracker_app/Views/Components/Pages/add_category.dart';
import 'package:budget_tracker_app/Views/Components/Pages/view_category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  var data = Get.put(NavigationController());
  List<Widget> PageList = [AddCategory(), ViewCategory()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GetBuilder<NavigationController>(
        builder: (_) => NavigationBar(
          selectedIndex: data.navigationModel.selectedIndex,
          onDestinationSelected: (val) {
            data.changeTab(val: val);
          },
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.category),
              label: "Add Category",
            ),
            NavigationDestination(
              icon: Icon(Icons.view_agenda_outlined),
              label: "View Category",
            ),
          ],
        ),
      ),
      body: GetBuilder<NavigationController>(
        builder: (_) => PageView(
          onPageChanged: (val) {
            data.changeTab(val: val);
          },
          controller: data.pageController,
          children: PageList,
        ),
      ),
    );
  }
}
