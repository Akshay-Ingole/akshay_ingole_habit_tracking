import 'package:flutter/material.dart';

import 'theme_provider.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;

  final ValueChanged<String> onLeftMenuSelected;

  final ValueChanged<String> onRightMenuSelected;
  CommonAppBar({
    required this.title,
    required this.onLeftMenuSelected,
    required this.onRightMenuSelected,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () => onLeftMenuSelected('Left menu opened'),
      ),
      actions: [
        // IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () => onRightMenuSelected('Right menu opened'),
        // ),
        IconButton(
          icon: Icon(Icons.brightness_6),
          onPressed: () {
            ThemeProvider.of(context).toggleTheme();
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + kTextTabBarHeight);
}
