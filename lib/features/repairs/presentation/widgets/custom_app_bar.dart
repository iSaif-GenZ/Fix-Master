import 'package:fix_master/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.darkBlue,
      title: Text(
        "Fix Master",
        style: const TextStyle(
          color: AppColors.offWhite,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        IconButton(
          onPressed: null,
          icon: Icon(Icons.search, color: AppColors.offWhite),
        ),
        IconButton(
          onPressed: null,
          icon: Icon(Icons.settings, color: AppColors.offWhite),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
