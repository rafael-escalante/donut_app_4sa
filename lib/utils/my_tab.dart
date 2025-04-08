import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  //ruta del archivo
  //c:/documentos/ingenieria en sistemas/
  final String iconPath;
  final String label;

  const MyTab({super.key, required this.iconPath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                //borde redondeado
                borderRadius: BorderRadius.circular(16)),
            child: Image.asset(
              //ruta del archivo
              iconPath,
              color: Colors.grey[600],
              height: 30,
            ),
          ),

          const SizedBox(height: 4), // Espaciado entre la imagen y el texto
          Text(
            label,

            // Texto debajo de la imagen
            style: TextStyle(fontSize: 10, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
