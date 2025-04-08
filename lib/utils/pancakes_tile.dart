import 'package:flutter/material.dart';

class PancakesTile extends StatelessWidget {
  final String pancakesFlavor;
  final String pancakesStore;
  final String pancakesPrice;
  //dinamy por que sera del tipo color
  final dynamic pancakesColor;
  final String imageName;

  const PancakesTile(
      {super.key,
      required this.pancakesFlavor,
      required this.pancakesStore,
      required this.pancakesPrice,
      required this.pancakesColor,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        //color: donutColor[50],
        decoration: BoxDecoration(
          color: pancakesColor[50],
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
                    color: pancakesColor[100],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    '\$$pancakesPrice',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: pancakesColor[800]),
                  ),
                ),
              ],
            ),
            //pancakes price
            SizedBox(
              height: 120,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Image.asset(imageName),
              ),
            ),
            //pancakes flavor text
            Text(pancakesFlavor,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black)),

            Text(
              pancakesStore,
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
