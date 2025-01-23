import 'package:flutter/material.dart';

class NewScreenAndBack extends StatelessWidget {
  const NewScreenAndBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nueva Pantalla'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: const Center(
        child: Text('Nueva Pantalla con Retorno'),
      ),
    );
  }
} 