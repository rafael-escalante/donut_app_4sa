import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/smoothie_tile.dart';

class SmoothieTab extends StatelessWidget {
  //list of smoothies
  final List smoothiesOnSale = [
    // [ smoothieFlavor,smoothieStore, smoothiePrice, smoothieColor, imageName ]
    [
      "Naranja",
      "Pollos Hermanos",
      "36",
      Colors.deepOrange,
      "lib/images/smoothie_1.png"
    ],
    [
      "Fresa",
      "Morayta smoothies",
      "45",
      Colors.pink,
      "lib/images/smoothie_2.png"
    ],
    [
      "Naranja",
      "Selva Uitz smoothies",
      "84",
      Colors.orange,
      "lib/images/smoothie_3.png"
    ],
    [
      "Kiwi",
      "Cesarin smoothies",
      "95",
      Colors.green,
      "lib/images/smoothie_4.png"
    ],
    [
      "Platano",
      "Pollos Hermanos",
      "36",
      Colors.blue,
      "lib/images/smoothie_5.png"
    ],
    [
      "Chocolte",
      "Morayta Donuts",
      "45",
      Colors.brown,
      "lib/images/smoothie_6.png"
    ],
    [
      "Blueberry",
      "Selva Uitz Donuts",
      "84",
      Colors.purple,
      "lib/images/smoothie_7.png"
    ],
    [
      "Remolacha",
      "Cesarin Donuts",
      "95",
      Colors.red,
      "lib/images/smoothie_8.png"
    ],
  ];

  SmoothieTab({super.key});

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
        return SmoothieTile(
          smoothieFlavor: smoothiesOnSale[index][0],
          smoothieStore: smoothiesOnSale[index][1],
          smoothiePrice: smoothiesOnSale[index][2],
          smoothieColor: smoothiesOnSale[index][3],
          imageName: smoothiesOnSale[index][4],
        );
      },
    );
  }
}
