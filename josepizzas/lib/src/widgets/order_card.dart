import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  OrderCard({
    Key? key,
    required this.orderText,
    required this.priceText,
    required this.addTap,
    required this.myIcon,
  }) : super(key: key);

  String orderText;
  String priceText;
  dynamic myIcon;
  dynamic addTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: myIcon,
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
