import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface/utils/color_palette.dart';
import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  final String urlImage;
  final bool isVisualized;

  const ProfileImageWidget(
      {Key? key, required this.urlImage, this.isVisualized = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: ColorPallete.blueFacebook,
      child: CircleAvatar(
        radius: isVisualized ? 22 : 19,
        backgroundImage: CachedNetworkImageProvider(urlImage),
      ),
    );
  }
}
