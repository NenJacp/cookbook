import 'package:flutter/material.dart';
import 'fadeInOut.dart';
import 'pageRoute.dart';
import 'physicSimulation.dart';
import 'container.dart';

class AnimationMenu extends StatelessWidget {
  const AnimationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú de Animaciones'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        children: [
          _buildMenuButton(context, 'Fade In/Out', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp()));
          }),
          _buildMenuButton(context, 'Rutas de Página', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Page1()));
          }),
          _buildMenuButton(context, 'Simulación Física', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const PhysicsCardDragDemo()));
          }),
          _buildMenuButton(context, 'Contenedor Animado', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AnimatedContainerApp()));
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