import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaFlavor;
  final String pizzaStore;
  final String pizzaPrice;
  //dinamy por que sera del tipo color
  final dynamic pizzaColor;
  final String imageName;

  const PizzaTile(
      {super.key,
      required this.pizzaFlavor,
      required this.pizzaStore,
      required this.pizzaPrice,
      required this.pizzaColor,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        //color: pizzaColor[50],
        decoration: BoxDecoration(
          color: pizzaColor[50],
          //Esquinas redondeadas
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: pizzaColor[100],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    '\$$pizzaPrice',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: pizzaColor[800]),
                  ),
                ),
              ],
            ),
            //pizza price
            SizedBox(
              height: 120,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Image.asset(imageName),
              ),
            ),
            //pizza flavor text
            Text(pizzaFlavor,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black)),

            Text(
              pizzaStore,
              style: TextStyle(fontSize: 13, color: Colors.blueGrey),
            ),

            //Icons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border_outlined,
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text("Add",
                          style: TextStyle(
                              fontSize: 20,
                              color: const Color.fromARGB(255, 52, 53, 54),
                              fontWeight: FontWeight.w900,
                              decoration: TextDecoration.underline))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
