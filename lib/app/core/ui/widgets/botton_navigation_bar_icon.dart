import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';

class BottonNavigationBarIcon extends StatelessWidget {
  const BottonNavigationBarIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      onTap: (int i) => print('TAB INDEX $i'),
      style: TabStyle.fixedCircle,
      initialActiveIndex: 2,
      activeColor: UiConfig.colorScheme.onPrimary,
      //shadowColor: UiConfig.colorScheme.onPrimary,
      color: UiConfig.colorScheme.onPrimary,
      backgroundColor: UiConfig.colorScheme.onPrimary,
      items: [
        TabItem(icon: Image.asset('assets/icons/icon_wallet.png')),
        TabItem(icon: Image.asset('assets/icons/icon_graphic.png')),
        TabItem(icon: Image.asset('assets/icons/icon_home.png')),
        TabItem(icon: Image.asset('assets/icons/icon_person.png')),
        TabItem(icon: Image.asset('assets/icons/icon_hand_money.png')),
      ],
    );
  }
}
