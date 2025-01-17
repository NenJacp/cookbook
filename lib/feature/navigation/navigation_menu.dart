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
        backgroundColor: Colors.deepPurple, // Color de fondo de la AppBar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresa al menú principal
          },
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0), // Padding alrededor de la GridView
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
      color: Colors.blue.shade50, // Color de fondo de la tarjeta
      elevation: 4, // Sombra de la tarjeta
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Padding dentro de la tarjeta
          child: Center(
            child: Text(title, style: const TextStyle(fontSize: 20, color: Colors.black)),
          ),
        ),
      ),
    );
  }
}
