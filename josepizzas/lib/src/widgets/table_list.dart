import 'package:flutter/material.dart';

class TableCard extends StatelessWidget {
  const TableCard({Key? key, required this.mesaText}) : super(key: key);

  final String mesaText;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const FlutterLogo(),
        title: Text(mesaText),
      ),
    );
  }
}
