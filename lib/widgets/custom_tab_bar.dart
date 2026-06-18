import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/config/palette.dart';

// TODO: Review for latest Flutter version compatibility
class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final ValueChanged<int> onTap;

  const CustomTabBar({
    super.key,
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: Border(
          top: BorderSide(color: Palette.facebookBlue, width: 3.0),
        ),
      ),
      tabs: icons
          .asMap()
          .map(
            (i, e) => MapEntry(
              i,
              Tab(
                icon: Icon(
                  e,
                  color: i == selectedIndex
                      ? Palette.facebookBlue
                      : Colors.black45,
                ),
              ),
            ),
          )
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
