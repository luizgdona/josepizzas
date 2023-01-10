import 'package:flutter/material.dart';

import 'views/tables_page.dart';

class JosePizza extends StatelessWidget {
  const JosePizza({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'José Pizzas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const TablePage(title: 'José Pizzas'),
    );
  }
}
