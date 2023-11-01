import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
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
    ));
  }
}
