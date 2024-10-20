import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reto1_donut_app_ulises_millan/pages/home_page.dart';
import 'package:reto1_donut_app_ulises_millan/utils/cart.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Cart(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        tabBarTheme: const TabBarTheme(
          indicatorColor: Colors.pink,
        ),
      ),
    );
  }
}
