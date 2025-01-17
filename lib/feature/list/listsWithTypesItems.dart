import 'package:flutter/material.dart';

class ListsWithTypesItems extends StatelessWidget {
  const ListsWithTypesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lists with Types Items'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresa al menú de listas
          },
        ),
      ),
      body: ListView(
        children: [
          ListTile(title: Text('Elemento de Tipo A')),
          ListTile(title: Text('Elemento de Tipo B')),
          ListTile(title: Text('Elemento de Tipo C')),
          ListTile(title: Text('Elemento de Tipo D')),
          ListTile(title: Text('Elemento de Tipo E')),
        ],
      ),
    );
  }
}