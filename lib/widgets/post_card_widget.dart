import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface/widgets/profile_image_widget.dart';
import 'package:flutter/material.dart';

import '../models/post.dart';

class PostCardWidget extends StatelessWidget {
  final Post post;

  const PostCardWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Container(
            color: Colors.yellow,
            width: 100,
            height: 100,
          ),
        ],
      ),
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
