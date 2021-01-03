// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/user_model.dart';
import 'package:flutter_facebook_responsive_ui/widgets/profile_avatar.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({
    Key key,
    this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      // height: 100.0,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              // CircleAvatar(
              //   //
              //   radius: 20.0,
              //   backgroundColor: Colors.grey[200],
              //   backgroundImage:
              //       CachedNetworkImageProvider(currentUser.imageUrl),
              // ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'O que você pretende hoje?'),
                ),
              ),
            ],
          ),
          const Divider(
            height: 10,
            thickness: 0.5,
          ),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.videocam,
                    color: Colors.red,
                  ),
                  label: Text('Live'),
                ),
                const VerticalDivider(
                  width: 8,
                ),
                FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.photo_library, color: Colors.green),
                  label: Text('Foto'),
                ),
                const VerticalDivider(
                  width: 8,
                ),
                FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.video_call, color: Colors.purpleAccent),
                  label: Text('Sala'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
