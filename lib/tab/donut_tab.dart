import 'package:flutter/material.dart';
import 'package:reto1_donut_app_ulises_millan/utils/donut_tile.dart';

class DonutTab extends StatefulWidget {
  const DonutTab({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DonutTabState createState() => _DonutTabState();
}

class _DonutTabState extends State<DonutTab> {
  // Lista de donuts en venta con detalles como sabor, precio, color e imagen
  final List donutOnSale = [
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
  ];

  // Variables que almacenan la cantidad de ítems y el total del carrito
  int cartItems = 2;
  double cartTotal = 45.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Lista expandida que contiene las donas en forma de grid
        Expanded(
          child: GridView.builder(
            itemCount: donutOnSale.length, // Número de donas
            padding: const EdgeInsets.all(12), // Espaciado alrededor del grid
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Número de columnas
                childAspectRatio: 1 / 1.5 // Proporción del tamaño del grid
                ),
            itemBuilder: (context, index) {
              // Para cada dona, crea un widget 'DonutTile'
              return DonutTile(
                donutFlavor: donutOnSale[index][0], // Sabor de la dona
                donutPrice: donutOnSale[index][1], // Precio de la dona
                donutColor: donutOnSale[index][2], // Color de la dona
                imageName: donutOnSale[index][3], // Imagen de la dona
              );
            },
          ),
        ),

        // Contenedor para el total del carrito y el botón de 'View Cart'
        Container(
          padding: const EdgeInsets.all(16), // Padding dentro del contenedor
          decoration: BoxDecoration(
            color: Colors.white, // Color de fondo blanco del contenedor
            borderRadius: const BorderRadius.vertical(
                top: Radius.circular(
                    20)), // Bordes redondeados en la parte superior
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Sombra gris
                spreadRadius: 5, // Cuán lejos se extiende la sombra
                blurRadius: 7, // Suavidad de la sombra
                offset: const Offset(0, 3), // Posición de la sombra
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // Distribuye los elementos en los extremos
            children: [
              // Columna que muestra la cantidad de ítems y el total
              Column(
                crossAxisAlignment: CrossAxisAlignment
                    .start, // Alinea los textos a la izquierda
                children: [
                  // Texto que muestra la cantidad de ítems y el total en blanco
                  Text(
                    '$cartItems Items | \$$cartTotal',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold, // Texto en negrita
                      fontSize: 16, // Tamaño del texto
                      color: Colors.black, // Color blanco del texto
                    ),
                  ),
                  // Texto que muestra "Delivery Charges included" en gris
                  Text(
                    'Delivery Charges included',
                    style: TextStyle(
                      fontSize: 12, // Tamaño más pequeño para este texto
                      color: Colors.grey[600], // Color gris
                    ),
                  ),
                ],
              ),

              // Botón para ver el carrito
              ElevatedButton(
                onPressed: () {
                  // Aquí puedes añadir la funcionalidad del botón para ver el carrito
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Fondo del botón rojo
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30), // Bordes redondeados
                  ),
                ),
                // Texto del botón
                child: const Text(
                  'View Cart',
                  style: TextStyle(
                    color: Colors.white, // Color del texto del botón en blanco
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
