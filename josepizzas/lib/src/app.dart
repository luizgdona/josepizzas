import 'package:flutter/material.dart';
import 'package:josepizzas/src/views/order_hist.dart';
import 'package:josepizzas/src/views/order_page.dart';
import 'package:josepizzas/src/views/tables_page.dart';

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
      initialRoute: '/home',
      routes: {
        '/home': (context) => const TablePage(),
        '/orderpage': (context) => const OrderPage(),
        '/histo': (context) => const OrderHist(),
      },
    );
  }
}
