import 'package:flutter/material.dart';

class AppBarPizzas extends StatelessWidget implements PreferredSizeWidget {
  const AppBarPizzas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 3,
      centerTitle: true,
      backgroundColor: Colors.orange,
      title: const Text('José Pizzas'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(25);
}
