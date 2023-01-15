class PizzaModel {
  String? pizza;
  int? qnt;
  int? price;

  PizzaModel({this.pizza, this.qnt, this.price});

  static List<PizzaModel> data = [
    PizzaModel(pizza: 'Margherita', qnt: 1, price: 40),
    PizzaModel(pizza: 'Calabresa', qnt: 1, price: 45),
    PizzaModel(pizza: 'Portuguesa', qnt: 1, price: 48),
    PizzaModel(pizza: 'Napolitana', qnt: 1, price: 42),
  ];
}

class DrinksModel {
  String? drink;
  int? qnt;
  int? price;

  DrinksModel({this.drink, this.qnt, this.price});

  static List<DrinksModel> data = [
    DrinksModel(drink: 'Cerveja', qnt: 1, price: 15),
    DrinksModel(drink: 'Coca-Cola', qnt: 1, price: 8),
    DrinksModel(drink: 'Água', qnt: 1, price: 5),
  ];
}

class DessertsModel {
  String? desserts;
  int? qnt;
  int? price;

  DessertsModel({this.desserts, this.qnt, this.price});

  static List<DessertsModel> data = [
    DessertsModel(desserts: 'Tiramissu', qnt: 1, price: 20),
    DessertsModel(desserts: 'Gelato', qnt: 1, price: 20),
  ];
}
