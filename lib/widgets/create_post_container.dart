import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/models/models.dart';
import 'package:flutter_facebook_responsive_ui/widgets/profile_avatar.dart';

// TODO: Review for latest Flutter version compatibility
class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({super.key, required this.currentUser});

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
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: 'O que você pretende hoje?',
                  ),
                ),
              ),
            ],
          ),
          const Divider(height: 10, thickness: 0.5),
          SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.videocam, color: Colors.red),
                  label: const Text('Live'),
                ),
                const VerticalDivider(width: 8),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.photo_library, color: Colors.green),
                  label: const Text('Foto'),
                ),
                const VerticalDivider(width: 8),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.video_call, color: Colors.purpleAccent),
                  label: const Text('Sala'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
