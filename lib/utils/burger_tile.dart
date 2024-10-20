// burger_tile.dart
import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerName;
  final String burgerPrice;
  final dynamic burgerColor;
  final String imageName;
  final VoidCallback onAdd; // Callback para añadir al carrito

  const BurgerTile({
    super.key,
    required this.burgerName,
    required this.burgerPrice,
    this.burgerColor,
    required this.imageName,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: burgerColor[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          children: [
            // Precio en la esquina superior derecha
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: burgerColor[100],
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 18,
                ),
                child: Text(
                  '\$$burgerPrice',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: burgerColor[800],
                  ),
                ),
              ),
            ),
            // Contenido de la hamburguesa
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Imagen
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 12,
                  ),
                  child: Image.asset(imageName),
                ),
                // Nombre
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    burgerName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 4),
                // Texto adicional "Burger House"
                const Text(
                  "Carl's Jr",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                // Botones de acción
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  // Ícono de favorito
                IconButton(
                  onPressed: () {
                  // Acción para marcar como favorito
                  },
                  icon: Icon(
                      Icons.favorite, // Ícono relleno
                      color: Colors.red[400], // Color del borde y del relleno
                    ),
                    ),

                      // Ícono "+"
                      GestureDetector(
                        onTap: onAdd, // Acción al tocar "+"
                        child: Icon(
                          Icons.add,
                          size: 30,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
