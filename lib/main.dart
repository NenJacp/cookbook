import 'package:flutter/material.dart';
import 'feature/design/design_menu.dart'; // Menú para las tareas de diseño
import 'feature/randomWords/randomWords.dart'; // Acceso directo a randomWords
import 'feature/image/image_menu.dart'; // Menú para las imágenes
import 'feature/list/list_menu.dart'; // Menú para las listas
import 'feature/navigation/navigation_menu.dart'; // Menú para la navegación
import 'feature/form/form_menu.dart'; // Menú para los formularios

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const HomePage(),
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
        children: <Widget>[
          _buildMenuButton(context, 'Diseño', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DesignMenu()),
            );
          }),
          _buildMenuButton(context, 'Random Words', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FirstApp()),
            );
          }),
          _buildMenuButton(context, 'Imágenes', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ImageMenu()), // Navega al menú de imágenes
            );
          }),
          _buildMenuButton(context, 'Listas', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ListMenu()), // Navega al menú de listas
            );
          }),
          _buildMenuButton(context, 'Navegación', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NavigationMenu()), // Navega al menú de navegación
            );
          }),
          _buildMenuButton(context, 'Formularios', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FormMenu()), // Navega al menú de formularios
            );
          }),
          // Agrega más botones según sea necesario
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
