import 'package:flutter/material.dart';

class NamedRoutesDemo extends StatelessWidget {
  const NamedRoutesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Named Routes Demo'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresa al menú de navegación
          },
        ),
      ),
      body: Center(
        child: const Text('This is the Named Routes Demo'),
      ),
    );
  }
}