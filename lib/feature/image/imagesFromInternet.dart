import 'package:flutter/material.dart';

void main() => runApp(const ImagesFromInternet());

class ImagesFromInternet extends StatelessWidget {
  const ImagesFromInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Images',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Web Images'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Center(
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS2hUNLOiMnRjy8-8bio5j64B7VGLqicDs-w&s',
            errorBuilder: (context, error, stackTrace) {
              return Text('Failed to load image: $error');
            },
          ),
        ),
      ),
    );
  }
}