import 'package:facebook_interface/utils/color_palette.dart';
import 'package:facebook_interface/widgets/button_image_profile_widget.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../models/user.dart';

class ListOfOptionsWidget extends StatelessWidget {
  final User user;

  final List<List> options = const [
    [LineIcons.userFriends, ColorPallete.blueFacebook, "Amigos"],
    [LineIcons.facebookMessenger, ColorPallete.blueFacebook, "Mensagens"],
    [LineIcons.flag, Colors.orange, "Páginas"],
    [LineIcons.users, ColorPallete.blueFacebook, "Grupos"],
    [Icons.storefront_outlined, ColorPallete.blueFacebook, "Marketplace"],
    [Icons.ondemand_video, Colors.red, "Assistir"],
    [LineIcons.calendar, Colors.deepPurple, "Eventos"],
    [LineIcons.chevronCircleDown, Colors.black45, "Ver mais"],
  ];

  const ListOfOptionsWidget({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10),
        itemCount: 1 + options.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: ButtonImageProfileWidget(
                user: user,
                onTap: () {},
              ),
            );
          }

          List item = options[index - 1];

          return Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Options(
              icon: item[0],
              color: item[1],
              title: item[2],
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}

class Options extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final VoidCallback onTap;

  const Options(
      {Key? key,
      required this.color,
      required this.onTap,
      required this.title,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: color,
            size: 35,
          ),
          SizedBox(
            width: 4,
          ),
          Flexible(
            child: Text(
              title,
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
