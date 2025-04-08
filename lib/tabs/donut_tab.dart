import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  //list of donuts
  final List donutsOnSale = [
    // [ donutFlavor,donutStore, donutPrice, donutColor, imageName ]
    ["Clasica", "Pollos Hermanos", "36", Colors.blue, "lib/images/donut_1.png"],
    ["Azucarada", "Morayta Donuts", "45", Colors.red, "lib/images/donut_2.png"],
    [
      "Chispas",
      "Selva Uitz Donuts",
      "84",
      Colors.purple,
      "lib/images/donut_3.png"
    ],
    [
      "Full Choco",
      "Cesarin Donuts",
      "95",
      Colors.brown,
      "lib/images/donut_4.png"
    ],
    [
      "Glaseada",
      "Pollos Hermanos",
      "36",
      Colors.blue,
      "lib/images/donut_5.png"
    ],
    ["Fresa", "Morayta Donuts", "45", Colors.red, "lib/images/donut_6.png"],
    ["Nuez", "Selva Uitz Donuts", "84", Colors.brown, "lib/images/donut_7.png"],
    [
      "Exotic donut",
      "Cesarin Donuts",
      "95",
      Colors.yellow,
      "lib/images/donut_8.png"
    ],
  ];

  DonutTab({super.key});

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
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutStore: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
        );
      },
    );
  }
}
