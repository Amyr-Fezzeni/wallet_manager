import 'package:flutter/material.dart';

class TabIconData {
  TabIconData({
    required this.icon,
    this.index = 0,
    this.isSelected = false,
    this.animationController,
  });

  IconData icon;
  bool isSelected;
  int index;

  AnimationController? animationController;

  static List<TabIconData> tabIconsList = <TabIconData>[
    TabIconData(
      icon: Icons.home,
      index: 0,
      isSelected: true,
      animationController: null,
    ),
    TabIconData(
      icon: Icons.task,
      index: 1,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      icon: Icons.wallet,
      index: 2,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      icon: Icons.person,
      index: 3,
      isSelected: false,
      animationController: null,
    ),
  ];
}
