import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/screen/coming_soon.dart';
import 'package:netflix_ui_cloe/screen/dash_board.dart';
import 'package:netflix_ui_cloe/screen/download.dart';
import 'package:netflix_ui_cloe/screen/search.dart';

class TabsItem {
  final Widget page;
  final String label;
  final Icon icon;

  TabsItem({@required this.page, @required this.label, @required this.icon});

  static List<TabsItem> get items => [
        TabsItem(
          page: DashBoard(),
          icon: Icon(Icons.home),
          label: "Home",
        ),
        TabsItem(
            page: Search(), icon: Icon(Icons.search), label: "Search"),
        TabsItem(
          page: ComingSoon(),
          icon: Icon(Icons.queue),
          label: "Coming soon",
        ),
    TabsItem(
      page:Download(),
      icon: Icon(Icons.download_outlined),
      label: "Coming soon",
    ),
    TabsItem(
      page:Download(),
      icon: Icon(Icons.menu),
      label: "More",
    ),
      ];
}
