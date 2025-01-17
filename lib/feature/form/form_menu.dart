import 'package:flutter/material.dart';
import 'createAndStyle.dart' as createAndStyle; // Importa el archivo de Create and Style con un prefijo
import 'focusAndText.dart' as focusAndText; // Importa el archivo de Focus and Text con un prefijo
import 'formWithValidation.dart' as formWithValidation; // Importa el archivo de Form with Validation con un prefijo
import 'handleChangesTextField.dart' as handleChanges; // Importa el archivo de Handle Changes Text Field con un prefijo
import 'retrieveValueTextFiied.dart' as retrieveValue; // Importa el archivo de Retrieve Value Text Field con un prefijo

class FormMenu extends StatelessWidget {
  const FormMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú de Formularios'),
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
          _buildMenuButton(context, 'Create and Style', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const createAndStyle.CreateAndStyleApp()), // Navega a Create and Style
            );
          }),
          _buildMenuButton(context, 'Focus and Text', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const focusAndText.MyApp()), // Navega a Focus and Text
            );
          }),
          _buildMenuButton(context, 'Form with Validation', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const formWithValidation.MyCustomForm()), // Navega a Form with Validation
            );
          }),
          _buildMenuButton(context, 'Handle Changes', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const handleChanges.MyCustomForm()), // Navega a Handle Changes Text Field
            );
          }),
          _buildMenuButton(context, 'Retrieve Value', () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const retrieveValue.MyCustomForm()), // Navega a Retrieve Value Text Field
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
