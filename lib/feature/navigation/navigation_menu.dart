import 'package:flutter/material.dart';
import 'namedRoutes.dart'; // Importa el archivo de Named Routes
import 'newScreenAndBack.dart'; // Importa el archivo de New Screen and Back
import 'returnData.dart'; // Importa el archivo de Return Data
import 'widgetAcrossScreen.dart'; // Importa el archivo de Widget Across Screen

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú de Navegación'),
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
          _buildMenuButton(context, 'Named Routes', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NamedRoutesDemo()), // Navega a Named Routes
            );
          }),
          _buildMenuButton(context, 'New Screen and Back', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstRoute()), // Navega a New Screen and Back
            );
          }),
          _buildMenuButton(context, 'Return Data', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()), // Navega a Return Data
            );
          }),
          _buildMenuButton(context, 'Widget Across Screen', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HeroApp()), // Navega a Widget Across Screen
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
