import 'package:flutter/material.dart';
import 'package:josepizzas/src/widgets/app_bar.dart';

import '../widgets/table_list.dart';

class TablePage extends StatefulWidget {
  const TablePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarPizzas(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: ListView.builder(
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return TableCard(
                  mesaText: 'Mesa $index',
                );
              }),
        ),
      ),
    );
  }
}
