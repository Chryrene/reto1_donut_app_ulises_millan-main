import 'package:flutter/material.dart';
import '../utils/my_tab.dart'; // Asegúrate de que esta ruta sea correcta
import '../tap/burger_tab.dart'; // Asegúrate de que esta ruta sea correcta
import '../tap/donut_tab.dart'; // Asegúrate de que esta ruta sea correcta
import '../tap/pancake_tab.dart'; // Asegúrate de que esta ruta sea correcta
import '../tap/pizza_tab.dart'; // Asegúrate de que esta ruta sea correcta
import '../tap/smoothie_tab.dart'; // Asegúrate de que esta ruta sea correcta

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    const MyTab(iconPath: 'lib/icons/donut.png', label: 'Donuts'),
    const MyTab(iconPath: 'lib/icons/burger.png', label: 'Burgers'),
    const MyTab(iconPath: 'lib/icons/smoothie.png', label: 'Smoothies'),
    const MyTab(iconPath: 'lib/icons/pancakes.png', label: 'Pancakes'),
    const MyTab(iconPath: 'lib/icons/pizza.png', label: 'Pizzas'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(Icons.menu, color: Colors.grey[800], size: 36),
              onPressed: () {
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(Icons.person, color: Colors.grey[800], size: 36),
                onPressed: () {
                },
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Text(
                    'I want to ',
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    'EAT',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            // Tab bar
            TabBar(tabs: myTabs),
            // Tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(),
                  BurgerTab(),
                  SmoothieTab(),
                  PancakeTab(),
                  PizzaTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
