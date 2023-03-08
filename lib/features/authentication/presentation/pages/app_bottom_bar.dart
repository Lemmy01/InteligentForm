import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inteligent_forms/core/constants/string_constants.dart';
import 'package:inteligent_forms/features/fill_form/presentation/pages/fill_form_page.dart/fill_form_page.dart';
import 'package:inteligent_forms/features/forms/presentation/pages/forms_page/forms_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../profile/presentation/pages/profile_page/profile_page.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarsItems(context),
    );
  }

  List<Widget> _buildScreens() {
    return [
      const FillFormPage(),
      const FormsPage(),
      const ProfilePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems(BuildContext context) {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.description),
        title: (AppBarStrings.fillForm),
        activeColorPrimary: Theme.of(context).colorScheme.primary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.list),
        title: (AppBarStrings.forms),
        activeColorPrimary: Theme.of(context).colorScheme.primary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        title: (AppBarStrings.profile),
        activeColorPrimary: Theme.of(context).colorScheme.primary,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}
