import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';
import 'package:flutter_facebook_responsive_ui/data/data.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';

// TODO: Review for latest Flutter version compatibility
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            backgroundColor: Colors.white,
            title: Text(
              'Rafabook',
              style: const TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              // Container(
              //   margin: const EdgeInsets.all(6.0),
              //   decoration: BoxDecoration(
              //       color: Colors.grey[200], shape: BoxShape.circle),
              //   child: IconButton(
              //       icon: Icon(Icons.search),
              //       iconSize: 30,
              //       color: Colors.black,
              //       onPressed: () {}),
              // ),
              CircleButton(icon: Icons.search, iconSize: 30, onPressed: () {}),
              CircleButton(
                icon: Icons.messenger_outline,
                iconSize: 30,
                onPressed: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(currentUser: currentUser),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(child: Rooms(onLineUser: onlineUsers)),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            sliver: SliverToBoxAdapter(
              child: Stories(currentUser: currentUser, stories: stories),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final Post post = posts[index];
              return PostContainer(post: post);
            }, childCount: posts.length),
          ),

          // ),
        ],
      ),
    );
  }
}
