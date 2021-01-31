import 'package:flutter/material.dart';
import 'package:netflix_ui_cloe/screen/widgets/tabs_navigation.dart';

import '../../colors.dart';

class CustomBottomBar extends StatelessWidget {
  final Function onSelected;
  final currentIndex;

  const CustomBottomBar({Key key, this.onSelected, this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (int index) => onSelected(index),
      backgroundColor: AppColors.appBg,
      selectedItemColor: AppColors.white,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      unselectedItemColor: AppColors.inactiveGrey,
      items: [
        ...TabsItem.items.map((navItem) => BottomNavigationBarItem(
            backgroundColor: AppColors.appBg,
            icon: navItem.icon,
            label: navItem.label))
      ],
    );
  }
}
