import 'package:flutter/material.dart';

class ImagesFromInternet extends StatelessWidget {
  const ImagesFromInternet({super.key});

  @override
  Widget build(BuildContext context) {
    var title = 'Web Images';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresa al menú de imágenes
          },
        ),
      ),
      body: Center(
        child: Image.network('https://picsum.photos/250?image=9'),
      ),
    );
  }
}