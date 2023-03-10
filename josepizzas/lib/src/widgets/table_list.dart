import 'package:flutter/material.dart';

class TableCard extends StatelessWidget {
  TableCard({
    Key? key,
    required this.mesaText,
    required this.tapTap,
    required this.cardColor,
    required this.longRoute,
  }) : super(key: key);

  String mesaText;
  dynamic tapTap;
  dynamic cardColor;
  dynamic longRoute;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      child: ListTile(
        trailing: const Icon(Icons.table_bar),
        title: Text(mesaText),
        onTap: tapTap,
        onLongPress: longRoute,
      ),
    );
  }
}
