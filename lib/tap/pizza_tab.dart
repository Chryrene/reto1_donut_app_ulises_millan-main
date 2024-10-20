import 'package:flutter/material.dart';
import 'package:reto1_donut_app_ulises_millan/utils/pizza_tile.dart';

class PizzaTab extends StatelessWidget {
  // Lista de pizzas
  final List pizzasOnSale = [
    ["Pepperoni Pizza", "40", Colors.orange, "lib/images/pizza.png"],
    ["Margarita Pizza", "35", Colors.green, "lib/images/pizza.png"],
    ["BBQ Chicken Pizza", "50", Colors.brown, "lib/images/pizza.png"],
    ["Hawaiian Pizza", "45", Colors.yellow, "lib/images/pizza.png"],
    ["Veggie Pizza", "38", Colors.red, "lib/images/pizza.png"],
    ["Buffalo Pizza", "42", Colors.blue, "lib/images/pizza.png"],
    ["Meat Lovers Pizza", "55", Colors.purple, "lib/images/pizza.png"],
    ["Four Cheese Pizza", "48", Colors.grey, "lib/images/pizza.png"],
  ];

  PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzasOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaFlavor: pizzasOnSale[index][0],
          pizzaPrice: pizzasOnSale[index][1],
          pizzaColor: pizzasOnSale[index][2],
          imageName: pizzasOnSale[index][3],
        );
      },
    );
  }
}
