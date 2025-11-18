import 'package:flutter/material.dart';

// Widget 
class FooterWidget extends StatelessWidget {
  // Constructor 
  FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.white24, width: 1),
        ),
      ),
      child: Column(
        children: [
          Text(
            '© Hernán Narváez. Todos los derechos reservados.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 8),
          Text(
            'Pionero en IA Comercial.',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.blueAccent.shade100),
          ),
        ],
      ),
    );
  }
}