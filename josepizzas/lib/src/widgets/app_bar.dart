import 'package:flutter/material.dart';

class AppBarPizzas extends StatelessWidget {
  const AppBarPizzas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2,
      centerTitle: true,
      backgroundColor: Colors.orange,
      title: const Text('José Pizzas'),
    );
  }
}
