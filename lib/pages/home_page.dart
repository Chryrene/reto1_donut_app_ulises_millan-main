import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../utils/my_tab.dart';
import '../tap/burger_tab.dart';
import '../tap/donut_tab.dart';
import '../tap/pancake_tab.dart';
import '../tap/pizza_tab.dart';
import '../tap/smoothie_tab.dart';
import '../utils/cart.dart';
import '../pages/cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(Icons.menu, color: Colors.grey[800], size: 36),
              onPressed: () {
                // Implement menu functionality
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(Icons.person, color: Colors.grey[800], size: 36),
                onPressed: () {
                  // Implement profile functionality
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
            // Cart summary
            Consumer<Cart>(
              builder: (context, cart, child) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${cart.itemCount} Items | \$${cart.totalPrice.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Delivery Charges included',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CartPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'View Cart',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
