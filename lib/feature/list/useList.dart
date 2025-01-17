import 'package:flutter/material.dart';

class UseList extends StatelessWidget {
  const UseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Use List'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresa al menú de listas
          },
        ),
      ),
      body: ListView(
        children: [
          ListTile(title: Text('Use Item 1')),
          ListTile(title: Text('Use Item 2')),
          ListTile(title: Text('Use Item 3')),
        ],
      ),
    );
  }
}