import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/pizza_tile.dart';

class PizzaTab extends StatelessWidget {
  //list of pizzas
  final List pizzasOnSale = [
    // [ pizzaFlavor,pizzaStore, pizzaPrice, pizzaColor, imageName ]
    [
      "Bagel",
      "Pollos Hermanos",
      "36",
      Colors.deepOrange,
      "lib/images/pizza_1.png"
    ],
    ["Peperoni", "Morayta pizzas", "45", Colors.red, "lib/images/pizza_2.png"],
    [
      "Hawaiana",
      "Selva Uitz pizzas",
      "84",
      Colors.pink,
      "lib/images/pizza_3.png"
    ],
    [
      "Champiñones",
      "Cesarin pizzas",
      "95",
      Colors.blueGrey,
      "lib/images/pizza_4.png"
    ],
    [
      "Mexicana",
      "Pollos Hermanos",
      "36",
      Colors.blue,
      "lib/images/pizza_5.png"
    ],
    ["Magarita", "Morayta Donuts", "45", Colors.red, "lib/images/pizza_6.png"],
    ["Pastor", "Selva Uitz Donuts", "84", Colors.red, "lib/images/pizza_7.png"],
    [
      "Napolitana",
      "Cesarin Donuts",
      "95",
      Colors.brown,
      "lib/images/pizza_8.png"
    ],
  ];

  PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //prepa 1: como se va a organizar
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //numero de columnas
          crossAxisCount: 2,
          //proporcion(relacion de aspecto)
          childAspectRatio: 1 / 1.75),
      //cuantos elementos
      itemCount: 8,
      padding: const EdgeInsets.all(12),
      //que elemento se construira
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaFlavor: pizzasOnSale[index][0],
          pizzaStore: pizzasOnSale[index][1],
          pizzaPrice: pizzasOnSale[index][2],
          pizzaColor: pizzasOnSale[index][3],
          imageName: pizzasOnSale[index][4],
        );
      },
    );
  }
}
