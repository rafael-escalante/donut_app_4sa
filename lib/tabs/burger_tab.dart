import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/burger_tile.dart';

class BurgerTab extends StatelessWidget {
  //list of donuts
  final List burgersOnSale = [
    // [ donutFlavor,donutStore, donutPrice, donutColor, imageName ]
    ["Normal", "Pollos Hermanos", "36", Colors.blue, "lib/images/burger_1.png"],
    [
      "Doble carne",
      "Morayta Donuts",
      "45",
      Colors.red,
      "lib/images/burger_2.png"
    ],
    [
      "Pollo",
      "Selva Uitz Donuts",
      "84",
      Colors.purple,
      "lib/images/burger_3.png"
    ],
    [
      "Carne y pollo",
      "Cesarin Donuts",
      "95",
      Colors.brown,
      "lib/images/burger_4.png"
    ],
    ["Tocino", "Pollos Hermanos", "36", Colors.blue, "lib/images/burger_5.png"],
    [
      "Extra queso",
      "Morayta Donuts",
      "45",
      Colors.red,
      "lib/images/burger_6.png"
    ],
    [
      "Full queso",
      "Selva Uitz Donuts",
      "84",
      Colors.purple,
      "lib/images/burger_7.png"
    ],
    [
      "Monstruo",
      "Cesarin Donuts",
      "95",
      Colors.brown,
      "lib/images/burger_8.png"
    ],
  ];

  BurgerTab({super.key});

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
        return BurgerTile(
          burgerFlavor: burgersOnSale[index][0],
          burgerStore: burgersOnSale[index][1],
          burgerPrice: burgersOnSale[index][2],
          burgerColor: burgersOnSale[index][3],
          imageName: burgersOnSale[index][4],
        );
      },
    );
  }
}
