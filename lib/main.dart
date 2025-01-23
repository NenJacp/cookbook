import 'package:flutter/material.dart';
import 'feature/design/design_menu.dart'; // Menú para las tareas de diseño
import 'feature/randomWords/randomWords.dart'; // Acceso directo a randomWords
import 'feature/image/image_menu.dart'; // Menú para las imágenes
import 'feature/list/list_menu.dart'; // Menú para las listas
import 'feature/navigation/navigation_menu.dart'; // Menú para la navegación
import 'feature/form/form_menu.dart'; // Menú para los formularios
import 'feature/effect/effect_menu.dart'; // Menú para los efectos
import 'feature/animation/animation_menu.dart'; // Menú para las animaciones

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        cardTheme: CardTheme(color: Colors.blue.shade50),
      ),
      home: const NavigationMenu(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú Principal'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0), // Padding alrededor de la GridView
        children: <Widget>[
          _buildMenuButton(context, 'Diseño', Icons.design_services, Colors.orange, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DesignMenu()),
            );
          }),
          _buildMenuButton(context, 'Random Words', Icons.shuffle, Colors.blue, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstApp()),
            );
          }),
          _buildMenuButton(context, 'Imágenes', Icons.image, Colors.green, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ImageMenu()),
            );
          }),
          _buildMenuButton(context, 'Listas', Icons.list, Colors.red, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ListMenu()),
            );
          }),
          _buildMenuButton(context, 'Navegación', Icons.navigation, Colors.purple, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NavigationMenu()),
            );
          }),
          _buildMenuButton(context, 'Formularios', Icons.assignment, Colors.teal, () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FormMenu()),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context, String title, IconData icon, Color color, VoidCallback onPressed) {
    return Card(
      color: color, // Color de fondo de la tarjeta
      elevation: 4, // Sombra de la tarjeta
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Padding dentro de la tarjeta
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: Colors.white), // Ícono del botón
              const SizedBox(height: 8), // Espacio entre el ícono y el texto
              Text(title, style: const TextStyle(fontSize: 20, color: Colors.white)), // Texto del botón
            ],
          ),
        ),
      ),
    );
  }
}
