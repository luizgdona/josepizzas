import 'package:flutter/material.dart';
import 'package:josepizzas/src/models/order_menus.dart';
import 'package:josepizzas/src/widgets/app_bar.dart';
import 'package:josepizzas/src/widgets/order_card.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  static String routeName = '/orderpage';

  @override
  State<OrderPage> createState() => OrderPageState();
}

class OrderPageState extends State<OrderPage> {
  List<int> finalBill = [];
  int totalBill = 0;

  void billUppdate() {
    totalBill = finalBill.fold(0, (i, j) => (i + j));
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarPizzas(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(children: [
            const Text('Pizzas'),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: ((context, index) {
                PizzaModel data = PizzaModel.data[index];
                return OrderCard(
                  addTap: () {
                    finalBill.add(data.price);
                    setState(() {
                      billUppdate();
                    });
                  },
                  orderText: '${data.pizza} x${data.qnt}',
                  priceText: 'R\$${data.price}',
                  myIcon: const Icon(Icons.local_pizza),
                );
              }),
            ),
            const SizedBox(),
            const Text('Drinks'),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: ((context, index) {
                DrinksModel data = DrinksModel.data[index];
                return OrderCard(
                  addTap: () {
                    finalBill.add(data.price);
                    setState(() {
                      billUppdate();
                    });
                  },
                  orderText: '${data.drink} x${data.qnt}',
                  priceText: 'R\$${data.price}',
                  myIcon: const Icon(Icons.liquor),
                );
              }),
            ),
            const SizedBox(),
            const Text('Desserts'),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: ((context, index) {
                DessertsModel data = DessertsModel.data[index];
                return OrderCard(
                  addTap: () {
                    finalBill.add(data.price);
                    setState(() {
                      billUppdate();
                    });
                  },
                  orderText: '${data.desserts} x${data.qnt}',
                  priceText: 'R\$${data.price}',
                  myIcon: const Icon(Icons.icecream),
                );
              }),
            ),
            const SizedBox(),
            Text('$finalBill'),
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Text('Total da Conta = R${finalBill.fold(0, (i, j) => i + j)}'),
                  Text('Total da Conta = R\$$totalBill'),
                  FloatingActionButton(
                      child: const Icon(Icons.save),
                      onPressed: () {
                        Navigator.pushNamed(context, '/home',
                            arguments: totalBill);
                      }),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
