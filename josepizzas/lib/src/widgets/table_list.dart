import 'package:flutter/material.dart';

class TableCard extends StatelessWidget {
  TableCard({
    Key? key,
    required this.mesaText,
    required this.tapTap,
    required this.cardColor,
  }) : super(key: key);

  final String mesaText;
  dynamic tapTap;
  dynamic cardColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      child: ListTile(
        leading: const FlutterLogo(),
        title: Text(mesaText),
        onTap: tapTap,
      ),
    );
  }
}
