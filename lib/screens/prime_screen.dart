import 'package:facebook_interface/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../widgets/tabs_navigation_widget.dart';

class PrimeScreen extends StatefulWidget {
  const PrimeScreen({Key? key}) : super(key: key);

  @override
  _PrimeScreenState createState() => _PrimeScreenState();
}

class _PrimeScreenState extends State<PrimeScreen> {
  final List<Widget> screens = [
    HomeScreen(),
    Scaffold(
      backgroundColor: Colors.red,
    ),
    Scaffold(
      backgroundColor: Colors.yellow,
    ),
    Scaffold(
      backgroundColor: Colors.blue,
    ),
    Scaffold(
      backgroundColor: Colors.green,
    ),
    Scaffold(
      backgroundColor: Colors.purple,
    ),
  ];

  List<IconData> icons = [
    Icons.home,
    Icons.ondemand_video,
    Icons.storefront_outlined,
    Icons.flag_outlined,
    LineIcons.bell,
    Icons.menu,
  ];

  int tabSelecioned = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: icons.length,
      child: Scaffold(
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: screens,
        ),
        bottomNavigationBar: TabsNavigationWidget(
          tabSelecioned: tabSelecioned,
          icons: icons,
          onTap: (index) {
            setState(() {
              tabSelecioned = index;
            });
          },
        ),
      ),
    );
  }
}
