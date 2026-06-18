import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';
import 'package:flutter_facebook_responsive_ui/data/data.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'package:flutter_facebook_responsive_ui/widgets/profile_avatar.dart';

// TODO: Review for latest Flutter version compatibility
class Rooms extends StatelessWidget {
  final List<User> onLineUser;

  const Rooms({super.key, required this.onLineUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + onlineUsers.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: _CreateRoomButton(),
            );
          }
          final User user = onlineUsers[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ProfileAvatar(imageUrl: user.imageUrl, isActive: true),
          );
          // return Container(
          //   margin: const EdgeInsets.all(2.0),
          //   height: 20,
          //   width: 20,
          //   color: Colors.red,
          // );
        },
      ),
    );
  }
}

// create new widget for _CreateRoomButton

class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        foregroundColor: Palette.facebookBlue,
        side: BorderSide(width: 3.0, color: Colors.lightBlueAccent[100] ?? Colors.lightBlueAccent),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      ),
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (rect) =>
                Palette.createRoomGradient.createShader(rect),
            child: Icon(Icons.video_call, size: 35, color: Colors.white),
          ),
          const SizedBox(width: 6.0),
          const Text('Criar \nsala'),
        ],
      ),
    );
  }
}
