import 'package:flutter/material.dart';

class FadeImages extends StatelessWidget {
  const FadeImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imágenes con Placeholder'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresa al menú de imágenes
          },
        ),
      ),
      body: Stack(
        children: <Widget>[
          const Center(
            child: CircularProgressIndicator(),
          ),
          Center(
            child: FadeInImage.assetNetwork(
              placeholder: 'assets/images/fish.gif',
              image: 'https://c.tenor.com/BTwfZwYmtToAAAAM/yo-cuando-spinning.gif',
            ),
          ),
        ],
      ),
    );
  }
}
