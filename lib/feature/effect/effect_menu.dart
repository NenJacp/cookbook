import 'package:flutter/material.dart';
import 'FAB.dart';
import 'chatBubbles.dart';
import 'downloadBottom.dart';
import 'drag.dart';
import 'loading.dart';
import 'menuAnimation.dart';
import 'parrallax.dart';
import 'typingIndicator.dart';

class EffectMenu extends StatelessWidget {
  const EffectMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú de Efectos'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        children: [
          _buildMenuButton(context, 'FAB Expandible', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ExampleExpandableFab()));
          }),
          _buildMenuButton(context, 'Burbujas de Chat', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ExampleGradientBubbles()));
          }),
          _buildMenuButton(context, 'Descarga Inferior', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ExampleCupertinoDownloadButton()));
          }),
          _buildMenuButton(context, 'Arrastrar', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ExampleDragAndDrop()));
          }),
          _buildMenuButton(context, 'Cargando', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ExampleUiLoadingAnimation()));
          }),
          _buildMenuButton(context, 'Animación de Menú', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ExampleStaggeredAnimations()));
          }),
          _buildMenuButton(context, 'Parrallax', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp()));
          }),
          _buildMenuButton(context, 'Indicador de Escritura', () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ExampleIsTyping()));
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