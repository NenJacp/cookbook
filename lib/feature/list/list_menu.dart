import 'package:flutter/material.dart';
import 'floatingAppBar.dart'; // Importa el archivo de Floating App Bar
import 'grid.dart'; // Importa el archivo de Grid List
import 'horizontalList.dart'; // Importa el archivo de Horizontal List
import 'listWithSpacedItems.dart'; // Importa el archivo de List with Spaced Items
import 'listsWithTypesItems.dart'; // Importa el archivo de Lists with Types Items
import 'longList.dart'; // Importa el archivo de Long List
import 'useList.dart'; // Importa el archivo de Use List

class ListMenu extends StatelessWidget {
  const ListMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú de Listas'),
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
          _buildMenuButton(context, 'Floating App Bar', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()), // Navega a Floating App Bar
            );
          }),
          _buildMenuButton(context, 'Grid List', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GridList()), // Navega a Grid List
            );
          }),
          _buildMenuButton(context, 'Horizontal List', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Horizontallist()), // Navega a Horizontal List
            );
          }),
          _buildMenuButton(context, 'List with Spaced Items', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SpacedItemsList()), // Navega a List with Spaced Items
            );
          }),
          _buildMenuButton(context, 'Lists with Types Items', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ListsWithTypesItems()), // Navega a Lists with Types Items
            );
          }),
          _buildMenuButton(context, 'Long List', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LongList()), // Navega a Long List
            );
          }),
          _buildMenuButton(context, 'Use List', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const UseList()), // Navega a Use List
            );
          }),
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