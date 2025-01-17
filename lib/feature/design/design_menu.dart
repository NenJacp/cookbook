import 'package:flutter/material.dart';
import 'animateContainer.dart'; // Importa los archivos necesarios
import 'customFont.dart';
import 'drawer.dart' as drawer; // Usar un prefijo
import 'snackbat.dart';
import 'tabs.dart';
import 'textWithBackgroundColor.dart';

class DesignMenu extends StatelessWidget {
  const DesignMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú de Diseño'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresa al menú principal
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          _buildMenuItem(context, 'Animated Container', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AnimatedContainerApp()),
            );
          }),
          _buildMenuItem(context, 'Custom Font', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CustomFont()),
            );
          }),
          _buildMenuItem(context, 'Drawer', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const drawer.MyApp()),
            );
          }),
          _buildMenuItem(context, 'SnackBar', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SnackBarDemo()),
            );
          }),
          _buildMenuItem(context, 'Tabs', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TabBarDemo()),
            );
          }),
          _buildMenuItem(context, 'Text with Background Color', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, VoidCallback onPressed) {
    return ListTile(
      title: Text(title),
      onTap: onPressed,
    );
  }
}