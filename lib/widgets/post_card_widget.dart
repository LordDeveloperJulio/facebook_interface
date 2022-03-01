import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface/utils/color_palette.dart';
import 'package:facebook_interface/widgets/profile_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../models/post.dart';

class PostCardWidget extends StatelessWidget {
  final Post post;

  const PostCardWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          //cabeçalho
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PostHeader(
                  post: post,
                ),
                Text(post.description),
              ],
            ),
          ),
          //imagem da postagem
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: CachedNetworkImage(imageUrl: post.urlImage),
          ),
          //area de estatisticas
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: StatisticPost(
              post: post,
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonPost extends StatelessWidget {
  final Icon icon;
  final String title;
  final VoidCallback onTap;

  const ButtonPost(
      {Key? key, required this.icon, required this.onTap, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: Container(
            child: Row(
              children: [
                icon,
                SizedBox(
                  width: 4,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StatisticPost extends StatelessWidget {
  final Post post;

  const StatisticPost({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: ColorPallete.blueFacebook,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.thumb_up,
                color: Colors.white,
                size: 10,
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Expanded(
              child: Text(
                "${post.likes}",
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "${post.comments} comentários",
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "${post.shares} compartilhamentos",
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
        Divider(
          thickness: 1.2,
        ),
        Row(
          children: [
            ButtonPost(
              icon: Icon(
                LineIcons.thumbsUpAlt,
                color: Colors.grey[700],
              ),
              title: "Curtir",
              onTap: () {},
            ),
            ButtonPost(
              icon: Icon(
                LineIcons.alternateCommentAlt,
                color: Colors.grey[700],
              ),
              title: "Comentar",
              onTap: () {},
            ),
            ButtonPost(
              icon: Icon(
                LineIcons.share,
                color: Colors.grey[700],
              ),
              title: "Compartilhar",
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class PostHeader extends StatelessWidget {
  final Post post;

  const PostHeader({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileImageWidget(urlImage: post.user.urlImage, isVisualized: true),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.user.name,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Row(
                children: [
                  Text(
                    "${post.timeAgo} - ",
                  ),
                  Icon(
                    Icons.public,
                    size: 12,
                    color: Colors.grey[600],
                  ),
                ],
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_horiz),
        )
      ],
    );
  }
}
