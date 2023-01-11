import 'package:flutter/material.dart';
import 'package:josepizzas/src/widgets/app_bar.dart';

import '../widgets/table_list.dart';

class TablePage extends StatefulWidget {
  const TablePage({
    Key? key,
    required String title,
  }) : super(key: key);

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  //int tappedIndex;

  @override
  void initState() {
    super.initState();
  }

  final mesas = List<bool>.generate(12, (index) => false);
  //bool greenRed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarPizzas(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(children: [
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: mesas.length,
                itemBuilder: (context, index) {
                  return TableCard(
                      cardColor: mesas[index] ? Colors.red : Colors.green,
                      mesaText: 'Mesa $index',
                      tapTap: () {
                        setState(() {
                          mesas[index] = !mesas[index];
                        });
                      });
                }),
          ]),
        ),
      ),
    );
  }
}
