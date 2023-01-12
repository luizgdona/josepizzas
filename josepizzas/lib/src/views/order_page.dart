import 'package:flutter/material.dart';
import 'package:josepizzas/src/models/order_menus.dart';
import 'package:josepizzas/src/widgets/app_bar.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
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
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${data.pizza} x${data.qnt}'),
                    Text('\$${data.price}'),
                  ],
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
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${data.drink} x${data.qnt}'),
                    Text('\$${data.price}'),
                  ],
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
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${data.desserts} x${data.qnt}'),
                    Text('\$${data.price}'),
                  ],
                );
              }),
            ),
          ]),
        ),
      ),
    );
  }
}
