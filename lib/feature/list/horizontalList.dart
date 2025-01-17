import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Horizontal List'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresa al menú de listas
          },
        ),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(10, (index) {
          return Container(
            width: 100,
            color: Colors.blue,
            child: Center(child: Text('Item $index')),
          );
        }),
      ),
    );
  }
}