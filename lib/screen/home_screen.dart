import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/colors.dart';
import 'package:netflix_ui_cloe/screen/widgets/CustomBottomAppBar.dart';
import 'package:netflix_ui_cloe/screen/widgets/tabs_navigation.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  onTabClick(selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBg,
      bottomNavigationBar: CustomBottomBar(
        currentIndex: _currentIndex,
        onSelected: onTabClick,
      ),
      body: IndexedStack(index: _currentIndex, children: [
        for (final tabItem in TabsItem.items) tabItem.page,
      ]),
    );
  }
}
