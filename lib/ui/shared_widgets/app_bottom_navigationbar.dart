import 'package:flutter_application_1/core/enums/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_1/ui/shared_widgets/colors.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final BottomNavItem currentItem;
  final Function(BottomNavItem) onTap;

  const AppBottomNavigationBar({
    super.key,
    required this.currentItem,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return NavigationBar(
      selectedIndex: currentItem.index,
      onDestinationSelected: (index) {
        onTap(BottomNavItem.values[index]);
      },
      destinations: BottomNavItem.values.map((item) {
        return NavigationDestination(
          icon: Padding(
            padding: EdgeInsets.only(top: size.width / 30),
            child: SvgPicture.asset(
              'assets/icons/${item.icon}.svg',
              width: size.width / 10,
              height: size.width / 10,
            ),
          ),

          selectedIcon: SvgPicture.asset(
            'assets/icons/${item.icon}.svg',
            width: size.width / 10,
            height: size.width / 10,
            colorFilter: ColorFilter.mode(
              AppColors.accentColor,
              BlendMode.srcIn,
            ),
          ),
          label: '',
        );
      }).toList(),
    );
  }
}
