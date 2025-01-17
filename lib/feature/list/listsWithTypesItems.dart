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
          ListTile(title: Text('Type A Item')),
          ListTile(title: Text('Type B Item')),
          ListTile(title: Text('Type C Item')),
        ],
      ),
    );
  }
}