import 'package:flutter/material.dart';

// Widget 
class ChipTecnologia extends StatelessWidget {
  final String label;
  // Constructor 
  ChipTecnologia({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      // Estilos aplicados
      backgroundColor: Colors.blueAccent.withOpacity(0.2),
      labelStyle: TextStyle(color: Colors.blueAccent.shade100),
    );
  }
}