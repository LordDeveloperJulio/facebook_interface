import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface/models/story.dart';
import 'package:flutter/material.dart';

import '../models/user.dart';

class StoryAreaWidget extends StatelessWidget {
  final User user;
  final List<Story> storysList;

  const StoryAreaWidget(
      {Key? key, required this.user, required this.storysList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        scrollDirection: Axis.horizontal,
        itemCount: storysList.length,
        itemBuilder: (context, index) {
          Story storys = storysList[index];

          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 4,
            ),
            child: StoryCard(
              story: storys,
            ),
          );
        },
      ),
    );
  }
}

class StoryCard extends StatelessWidget {
  final Story story;

  const StoryCard({required this.story});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: CachedNetworkImage(
          imageUrl: story.urlImage,
          height: double.infinity,
          width: 110,
          fit: BoxFit.cover,
        ),
      ),
    ]);
  }
}
