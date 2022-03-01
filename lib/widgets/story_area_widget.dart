import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface/data/data.dart';
import 'package:facebook_interface/models/story.dart';
import 'package:facebook_interface/utils/color_palette.dart';
import 'package:facebook_interface/utils/responsive.dart';
import 'package:facebook_interface/widgets/profile_image_widget.dart';
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
    bool isDesktop = Responsive.isDesktop(context);
    return Container(
      height: 200,
      color: isDesktop ? Colors.transparent : Colors.white,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + storysList.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            Story userStory =
                Story(user: currentUser, urlImage: currentUser.urlImage);

            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4,
              ),
              child: StoryCard(
                story: userStory,
                addStory: true,
              ),
            );
          }

          Story storys = storysList[index - 1];

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
  final bool addStory;

  const StoryCard({required this.story, this.addStory = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: story.urlImage,
            height: double.infinity,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
            gradient: ColorPallete.gradientStoryCard,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Positioned(
          top: 8,
          left: 8,
          child: addStory
              ? Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.add),
                    iconSize: 30,
                    color: ColorPallete.blueFacebook,
                    onPressed: () {},
                  ),
                )
              : ProfileImageWidget(
                  urlImage: story.user.urlImage,
                  isVisualized: story.isVisualized,
                ),
        ),
        Positioned(
          left: 8,
          right: 8,
          bottom: 8,
          child: Text(addStory ? "Criar story" : story.user.name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
        ),
      ],
    );
  }
}
