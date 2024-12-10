import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.indigo,
      title: const Text(
        'Join Room',
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
      ),
    );
  }
}
