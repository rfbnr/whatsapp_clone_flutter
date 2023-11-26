import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/pages/calls_page.dart';
import 'package:whatsapp_clone/ui/pages/chats_page.dart';
import 'package:whatsapp_clone/ui/pages/communities_page.dart';
import 'package:whatsapp_clone/ui/pages/updates_page.dart';
import 'package:whatsapp_clone/ui/widgets/costume_appbar.dart';
import 'package:whatsapp_clone/ui/widgets/fab_list_icon.dart';
import 'package:whatsapp_clone/ui/widgets/navigation_item.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 0;

  final _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return ThemeSwitchingArea(
      child: Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        appBar: costumeAppBar(currentPage, context),
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              currentPage = index;
            });
          },
          children: const [
            ChatsPage(),
            UpdatesPage(),
            CommunitiesPage(),
            CallsPage(),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          elevation: 5,
          selectedIndex: currentPage,
          destinations: navigationItems,
          onDestinationSelected: (index) {
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          },
        ),
        floatingActionButton: Visibility(
          visible: currentPage != 2,
          child: fabListIcon[currentPage],
        ),
      ),
    );
  }
}
