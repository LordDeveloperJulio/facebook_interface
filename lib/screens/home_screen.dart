import 'package:facebook_interface/widgets/create_post_area_widget.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../data/data.dart';
import '../utils/color_palette.dart';
import '../widgets/button_circle_widget.dart';

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
              ButtonCircleWidget(
                icon: Icons.search,
                iconSize: 30,
                onPressed: () {},
              ),
              ButtonCircleWidget(
                icon: LineIcons.facebookMessenger,
                iconSize: 30,
                onPressed: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: CreatePostAreaWidget(
              user: currentUser,
            ),
          ),
        ],
      ),
    );
  }
}
