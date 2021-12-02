import 'package:flutter/material.dart';
import 'top_info.dart';
// import 'package:social_media_profile_screen/call_action.dart';
// import 'package:social_media_profile_screen/profile_avatar.dart';
// import 'package:social_media_profile_screen/story_group.dart';
// import 'package:social_media_profile_screen/tab_view.dart';
// import 'package:social_media_profile_screen/top_info.dart';
// import 'avatar_group.dart';

class Profile extends StatelessWidget {
  Profile(this.colour);
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          color: colour,
          child: Column(
            children: [
              TopInfo(),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Container(
                child: Image(
                  image: AssetImage('assets/images/avatar.png'),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text('100'),
                    Text('Post'),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text('500'),
                    Text('Follower'),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text('578'),
                    Text('Following'),
                  ],
                ),
              ),
            ],
          ),
TopInfo(),
              // AvatarGroup(),
              // ProfileAvatar(),
              // ActionCall(),
              // StoryGroup(),
              // TabView(),
            ],
          ),
        ),
      ),
    );
  }
}
