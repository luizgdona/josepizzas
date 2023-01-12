import 'package:flutter/material.dart';
import 'package:josepizzas/src/widgets/app_bar.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarPizzas(),
      body: Padding(padding: EdgeInsets.all(16)),
    );
  }
}
