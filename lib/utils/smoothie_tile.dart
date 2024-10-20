import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieName;
  final String smoothiePrice;
  final dynamic smoothieColor;
  final String imageName;
  final VoidCallback onAdd; // Callback para añadir al carrito

  const SmoothieTile({
    super.key,
    required this.smoothieName,
    required this.smoothiePrice,
    this.smoothieColor,
    required this.imageName,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: smoothieColor[50],
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
                  color: smoothieColor[100],
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
                  '\$$smoothiePrice',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: smoothieColor[800],
                  ),
                ),
              ),
            ),
            // Contenido del smoothie
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Imagen ajustada
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 12,
                  ),
                  child: Image.asset(
                    imageName,
                    width: 150, // Ajusta el ancho aquí
                    height: 150, // Ajusta el alto aquí
                    fit: BoxFit.cover, // Mantiene la proporción
                  ),
                ),
                // Nombre
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    smoothieName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 4),
                // Texto adicional "Smoothie House"
                const Text(
                  "Smoothie Mid",
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
