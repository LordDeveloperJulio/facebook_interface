import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../utils/color_palette.dart';
import '../widgets/button_circle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            floating: true,
            centerTitle: false,
            title: Text(
              "facebook",
              style: TextStyle(
                color: ColorPallete.blueFacebook,
                fontWeight: FontWeight.bold,
                fontSize: 28,
                letterSpacing: -1.2,
              ),
            ),
            actions: [
              ButtonCircle(
                icon: Icons.search,
                iconSize: 30,
                onPressed: () {},
              ),
              ButtonCircle(
                icon: LineIcons.facebookMessenger,
                iconSize: 30,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
