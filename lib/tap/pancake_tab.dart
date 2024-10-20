import 'package:flutter/material.dart';
import 'package:reto1_donut_app_ulises_millan/utils/pancake_tile.dart';

class PancakeTab extends StatelessWidget {
  // Lista de pancakes
  final List pancakesOnSale = [
    ["Classic Pancake", "20", Colors.amber, "lib/images/pancakes.png"],
    ["Nutella Pancake", "27", Colors.deepOrange, "lib/images/pancakes.png"],
    ["Blueberry Pancake", "30", Colors.blue, "lib/images/pancakes.png"],
    ["Peanut Butter Pancake", "32", Colors.pink, "lib/images/pancakes.png"],
    ["Maple Syrup Pancake", "24", Colors.orange, "lib/images/pancakes.png"],
    ["Chocolate Pancake", "25", Colors.brown, "lib/images/pancakes.png"],
    ["Strawberry Pancake", "28", Colors.red, "lib/images/pancakes.png"],
    ["Banana Pancake", "22", Colors.yellow, "lib/images/pancakes.png"],
  ];

  PancakeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakesOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return PancakeTile(
          pancakeFlavor: pancakesOnSale[index][0],
          pancakePrice: pancakesOnSale[index][1],
          pancakeColor: pancakesOnSale[index][2],
          imageName: pancakesOnSale[index][3],
        );
      },
    );
  }
}
