import 'package:auto_route/auto_route.dart';
import 'package:test_app/screens/router.gr.dart';
import 'package:test_app/utils/app_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../Home/home_screen.dart';
import '../Service_provider/Servece_provider.dart';
import '../chat_app/login_page.dart';
import '../search/search_screen.dart';
import '../utils/app_layout.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      /* appBarBuilder: (_, tabsRouter) => AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('contravel'),
        centerTitle: true,
        leading: const AutoBackButton(),
      ),*/
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      routes: [
        HomeRouter(),
        SearchRouter(),
        ServiceProviderRouter(),
        FeedbackRouter()
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return SalomonBottomBar(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            SalomonBottomBarItem(
              selectedColor: Colors.blueGrey,
              icon: Icon(FluentSystemIcons.ic_fluent_home_filled,
                  size: AppLayout.getWidth(20)),
              title: const Text('Home'),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.blueGrey,
              icon: Icon(FluentSystemIcons.ic_fluent_search_filled,
                  size: AppLayout.getWidth(20)),
              title: const Text('Search'),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.blueGrey,
              icon: Icon(Icons.directions_bus_filled,
                  size: AppLayout.getWidth(20)),
              title: const Text('Buses'),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.blueGrey,
              icon: Icon(FluentSystemIcons.ic_fluent_chat_filled,
                  size: AppLayout.getWidth(20)),
              title: const Text('FB'),
            ),
          ],
        );
      },
    );
  }
}
