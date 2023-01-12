import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  OrderCard({
    Key? key,
    required this.orderText,
    required this.addTap,
  }) : super(key: key);

  String orderText;
  dynamic addTap;
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const FlutterLogo(),
        title: Text(orderText),
        onTap: addTap,
      ),
    );
  }
}
