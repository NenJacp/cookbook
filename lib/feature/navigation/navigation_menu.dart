import 'package:flutter/material.dart';
import 'namedRoutes.dart'; // Importa el archivo de Named Routes
import 'newScreenAndBack.dart'; // Importa el archivo de New Screen and Back
import 'returnData.dart'; // Importa el archivo de Return Data
import 'widgetAcrossScreen.dart'; // Importa el archivo de Widget Across Screen
import 'basicNavegation.dart'; // Importa el archivo de Basic Navigation
import 'dataNavigation.dart'; // Importa el archivo de Data Navigation
import 'animatedNavegation.dart'; // Importa el archivo de Animated Navigation
import 'resultNavigation.dart'; // Importa el archivo de Result Navigation
import 'sendData.dart';

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
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        children: [
          _buildMenuButton(context, 'Navegación Básica', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const BasicNavigation()));
          }),
          _buildMenuButton(context, 'Navegación con Datos', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const DataNavigation()));
          }),
          _buildMenuButton(context, 'Navegación Animada', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AnimatedNavigation()));
          }),
          _buildMenuButton(context, 'Navegación con Resultados', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ResultNavigation()));
          }),
          _buildMenuButton(context, 'Retorno de Datos', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ReturnData()));
          }),
          _buildMenuButton(context, 'Enviar Datos', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SendData()));
          }),
          _buildMenuButton(context, 'Nueva Pantalla y Regresar', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const NewScreenAndBack()));
          }),
          _buildMenuButton(context, 'Rutas Nombradas', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const NamedRoutesDemo()));
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
