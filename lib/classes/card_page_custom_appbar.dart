import 'package:flutter/material.dart';

import 'AppConstants.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String titleText;

  const CustomAppBar({Key? key, required this.titleText})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      elevation: 0,
      backgroundColor: AppConstants.secondaryColor,
      leading: IconButton(
        icon: const Icon(
          Icons.keyboard_backspace_outlined,
          color: Colors.black,
          size: 28,
        ),
        onPressed: () => Navigator.of(context).pop(),
        splashRadius: Material.defaultSplashRadius - 8,
        tooltip: "Back",
      ),
      title: Text(
        widget.titleText,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_active_outlined,
            color: Colors.black,
            size: 26,
          ),
          splashRadius: Material.defaultSplashRadius - 8,
        ),
      ],
    );
  }
}
