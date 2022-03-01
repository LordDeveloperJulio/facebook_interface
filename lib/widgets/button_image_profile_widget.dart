import 'package:facebook_interface/widgets/profile_image_widget.dart';
import 'package:flutter/material.dart';

import '../models/user.dart';

class ButtonImageProfileWidget extends StatelessWidget {
  final User user;
  final VoidCallback onTap;

  const ButtonImageProfileWidget(
      {Key? key, required this.onTap, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileImageWidget(urlImage: user.urlImage, isVisualized: true),
          SizedBox(
            width: 4,
          ),
          Flexible(
            child: Text(
              user.name,
              style: TextStyle(fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
