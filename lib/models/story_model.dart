import 'package:flutter_facebook_responsive_ui/models/models.dart';

// TODO: Review for latest Flutter version compatibility
class Story {
  final User user;
  final String imageUrl;
  final bool isViewed;

  const Story({
    required this.user,
    required this.imageUrl,
    this.isViewed = false,
  });
}
