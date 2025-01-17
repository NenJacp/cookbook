import 'package:flutter/material.dart';
import 'imagesFromInternet.dart'; // Importa el archivo de imágenes de internet
import 'ImagesWithAPlaceholder.dart'; // Importa el archivo de imágenes con un placeholder

class ImageMenu extends StatelessWidget {
  const ImageMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú de Imágenes'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresa al menú principal
          },
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          _buildMenuButton(context, 'Imágenes de Internet', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ImagesFromInternet()),
            );
          }),
          _buildMenuButton(context, 'Imágenes con Placeholder', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FadeImages()), // Navega a FadeImages
            );
          }),
          // Agrega más botones para otras imágenes según sea necesario
        ],
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context, String title, VoidCallback onPressed) {
    return Card(
      child: InkWell(
        onTap: onPressed,
        child: Center(
          child: Text(title, style: const TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}