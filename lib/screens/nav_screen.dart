import 'package:flutter/material.dart';
import 'package:flutter_facebook_responsive_ui/screens/home_screen.dart';
import 'package:flutter_facebook_responsive_ui/widgets/widgets.dart';

// TODO: Review for latest Flutter version compatibility
class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  NavScreenState createState() => NavScreenState();
}

class NavScreenState extends State<NavScreen> {
  final List<Widget> _screen = const [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  final List<IconData> _icons = [
    Icons.home,
    Icons.ondemand_video,
    Icons.person_outline,
    Icons.people_outline,
    Icons.notifications_none,
    Icons.menu,
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        // options for tabBar second scroll is enable but update to disable
        // body: IndexedStack(
        //   index: _selectedIndex,
        //   children: _screen,
        // ),
        body: TabBarView(
          // enable this for disable scroll or use IndexedStack!!!
          // physics: NeverScrollableScrollPhysics(),
          children: _screen,
        ),
        bottomNavigationBar: Padding(
          // NOTE add ajuste for IOS and Android for bottom !!!!
          padding: const EdgeInsets.only(bottom: 10.0, top: 1.0),
          child: CustomTabBar(
            icons: _icons,
            selectedIndex: _selectedIndex,
            onTap: (index) => setState(() => _selectedIndex = index),
          ),
        ),
      ),
    );
  }
}
