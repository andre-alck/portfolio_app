import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) => AppBar(
      backgroundColor: const Color.fromARGB(255, 3, 4, 54),
      leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context)),
      title: const Text('menu'));

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
