import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/pancakes_tile.dart';

class PancakesTab extends StatelessWidget {
  //list of donuts
  final List pancakesOnSale = [
    // [ donutFlavor,donutStore, donutPrice, donutColor, imageName ]
    [
      "Hot Cakes",
      "Pollos Hermanos",
      "36",
      Colors.blue,
      "lib/images/pancakes_1.png"
    ],
    [
      "Blueberry",
      "Morayta Donuts",
      "45",
      Colors.red,
      "lib/images/pancakes_2.png"
    ],
    [
      "Miel",
      "Selva Uitz Donuts",
      "84",
      Colors.purple,
      "lib/images/pancakes_3.png"
    ],
    [
      "Mantequilla",
      "Cesarin Donuts",
      "95",
      Colors.brown,
      "lib/images/pancakes_4.png"
    ],
    [
      "Waffles Chocolate",
      "Pollos Hermanos",
      "36",
      Colors.blue,
      "lib/images/pancakes_5.png"
    ],
    [
      "Waffles Fresa",
      "Morayta Donuts",
      "45",
      Colors.green,
      "lib/images/pancakes_6.png"
    ],
    [
      "Churros",
      "Selva Uitz Donuts",
      "84",
      Colors.pink,
      "lib/images/pancakes_7.png"
    ],
    [
      "Churros Rellenos",
      "Cesarin Donuts",
      "95",
      Colors.orange,
      "lib/images/pancakes_8.png"
    ],
  ];

  PancakesTab({super.key});

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
        return PancakesTile(
          pancakesFlavor: pancakesOnSale[index][0],
          pancakesStore: pancakesOnSale[index][1],
          pancakesPrice: pancakesOnSale[index][2],
          pancakesColor: pancakesOnSale[index][3],
          imageName: pancakesOnSale[index][4],
        );
      },
    );
  }
}
