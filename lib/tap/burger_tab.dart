// burger_tab.dart
import 'package:flutter/material.dart';
import 'package:reto1_donut_app_ulises_millan/utils/burger_tile.dart';

class BurgerTab extends StatelessWidget {
   BurgerTab({super.key});

  // Lista de hamburguesas en venta
  final List burgersOnSale = [
    ["Cheeseburger", "50", Colors.yellow, "lib/images/burger.png"],
    ["Bacon Burger", "65", Colors.brown, "lib/images/burger.png"],
    ["Vegan Burger", "45", Colors.green, "lib/images/burger.png"],
    ["Spicy Burger", "55", Colors.red, "lib/images/burger.png"],
    ["Classic Burger", "40", Colors.orange, "lib/images/burger.png"],
    ["BBQ Burger", "70", Colors.deepPurple, "lib/images/burger.png"],
    ["Mushroom Swiss", "60", Colors.grey, "lib/images/burger.png"],
    ["Double Patty", "80", Colors.blue, "lib/images/burger.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgersOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerName: burgersOnSale[index][0],
          burgerPrice: burgersOnSale[index][1],
          burgerColor: burgersOnSale[index][2],
          imageName: burgersOnSale[index][3], onAdd: () {  },
        );
      },
    );
  }
}