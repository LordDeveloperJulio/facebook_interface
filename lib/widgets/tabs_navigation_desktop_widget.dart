import 'package:facebook_interface/widgets/tabs_navigation_widget.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../models/user.dart';
import '../utils/color_palette.dart';
import 'button_circle_widget.dart';
import 'button_image_profile_widget.dart';

class TabsNavigationDesktopWidget extends StatelessWidget {
  final User user;
  final List<IconData> icons;
  final int tabSelecioned;
  final Function(int) onTap;

  const TabsNavigationDesktopWidget(
      {Key? key,
      required this.icons,
      required this.user,
      required this.tabSelecioned,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, offset: Offset(0, 2), blurRadius: 4),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "facebook",
              style: TextStyle(
                color: ColorPallete.blueFacebook,
                fontWeight: FontWeight.bold,
                fontSize: 32,
                letterSpacing: -1.2,
              ),
            ),
          ),
          Expanded(
            child: TabsNavigationWidget(
              tabSelecioned: tabSelecioned,
              icons: icons,
              onTap: onTap,
              indicatorLow: true,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ButtonImageProfileWidget(
                  user: user,
                  onTap: () {},
                ),
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
          ),
        ],
      ),
    );
  }
}
