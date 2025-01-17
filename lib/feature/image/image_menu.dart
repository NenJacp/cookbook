import 'package:flutter/material.dart';
import 'imagesFromInternet.dart'; // Import correcto para ImagesFromInternet
import 'ImagesWithAPlaceholder.dart'; // Import correcto para ImagesWithAPlaceholder

class ImageMenu extends StatelessWidget {
  const ImageMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú de Imágenes'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          _buildMenuButton(context, 'Imágenes de Internet', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ImagesFromInternet()), // Navegación correcta a ImagesFromInternet
            );
          }),
          _buildMenuButton(context, 'Imágenes con Placeholder', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FadeImages()), // Navegación correcta a ImagesWithAPlaceholder
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