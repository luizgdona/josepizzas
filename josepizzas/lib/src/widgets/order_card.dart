import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  OrderCard({
    Key? key,
    required this.orderText,
    required this.priceText,
    required this.addTap,
  }) : super(key: key);

  String orderText;
  String priceText;
  dynamic addTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const FlutterLogo(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(orderText),
            Text(priceText),
          ],
        ),
        onTap: addTap,
      ),
    );
  }
}
