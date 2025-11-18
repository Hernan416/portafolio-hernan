import 'package:flutter/material.dart';

class CabeceraWidget extends StatelessWidget {
  CabeceraWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.blueAccent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        // 1. Centramos todo el contenido
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 2. Añadimos tu foto de perfil
          const CircleAvatar(
            radius: 50, // Puedes ajustar el tamaño
            backgroundColor: Colors.white24, // Un fondo mientras carga
            backgroundImage: AssetImage('assets/images/perfil.png'),
          ),
          const SizedBox(height: 24), // Espacio entre foto y nombre

          // 3. Texto (añadimos centrado por si acaso)
          Text(
            '¡Hola! Soy Hernán Narváez',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Colors.blueAccent.shade100),
          ),
          const SizedBox(height: 16),
          Text(
            'Un desarrollador apasionado por la tecnología, especializado en crear agentes de IA y automatizaciones que transforman negocios.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 18),
          ),
        ],
      ),
    );
  }
}