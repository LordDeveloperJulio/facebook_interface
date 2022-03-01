import 'package:facebook_interface/utils/color_palette.dart';
import 'package:flutter/material.dart';

class TabsNavigationWidget extends StatelessWidget {
  final List<IconData> icons;
  final int tabSelecioned;
  final Function(int) onTap;

  const TabsNavigationWidget(
      {Key? key,
      required this.icons,
      required this.tabSelecioned,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: onTap,
      indicator: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: ColorPallete.blueFacebook,
            width: 3,
          ),
        ),
      ),
      tabs: icons
          .asMap()
          .map(
            (index, item) {
              return MapEntry(
                index,
                Tab(
                  icon: Icon(
                    item,
                    color: tabSelecioned == index
                        ? ColorPallete.blueFacebook
                        : Colors.black54,
                    size: 30,
                  ),
                ),
              );
            },
          )
          .values
          .toList(),
    );
  }
}
