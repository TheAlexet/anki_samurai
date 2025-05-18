import 'package:anki_samurai/router/router.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: mainRoutes.map((item) {
        return BottomNavigationBarItem(
          icon: Icon(item.icon),
          label: tr(item.label),
        );
      }).toList(),
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
    );
  }
}
