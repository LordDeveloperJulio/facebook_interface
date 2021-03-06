import 'package:facebook_interface/utils/responsive.dart';
import 'package:facebook_interface/widgets/create_post_area_widget.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../data/data.dart';
import '../models/post.dart';
import '../utils/color_palette.dart';
import '../widgets/button_circle_widget.dart';
import '../widgets/contacts_list_widget.dart';
import '../widgets/list_of_options_widget.dart';
import '../widgets/post_card_widget.dart';
import '../widgets/story_area_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TrackingScrollController _scrollController = TrackingScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Responsive(
          mobile: HomeMobile(scrollController: _scrollController),
          desktop: HomeDesktop(scrollController: _scrollController),
        ),
      ),
    );
  }
}

class HomeMobile extends StatelessWidget {
  final TrackingScrollController scrollController;

  const HomeMobile({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
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
        SliverPadding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
          sliver: SliverToBoxAdapter(
            child: StoryAreaWidget(
              user: currentUser,
              storysList: storysList,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              Post post = posts[index];

              return PostCardWidget(
                post: post,
              );
            },
            childCount: posts.length,
          ),
        ),
      ],
    );
  }
}

class HomeDesktop extends StatelessWidget {
  final TrackingScrollController scrollController;

  const HomeDesktop({Key? key, required this.scrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: ListOfOptionsWidget(
              user: currentUser,
            ),
          ),
        ),
        Spacer(),
        Flexible(
          flex: 5,
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverPadding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                sliver: SliverToBoxAdapter(
                  child: StoryAreaWidget(
                    user: currentUser,
                    storysList: storysList,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: CreatePostAreaWidget(
                  user: currentUser,
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    Post post = posts[index];

                    return PostCardWidget(
                      post: post,
                    );
                  },
                  childCount: posts.length,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Flexible(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: ContactsListWidget(
              userList: onlineUser,
            ),
          ),
        ),
      ],
    );
  }
}
