import 'package:flutter/material.dart';
import 'package:portafolio_hernan/widgets/shared/tarjeta_seccion.dart';
import 'package:portafolio_hernan/widgets/shared/chip_tecnologia.dart';

class StackWidget extends StatelessWidget {
  StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de tecnologías
    final List<String> tecnologias = [
      'Flutter',
      'Dart',
      'n8n',
      'PostgreSQL',
      'Python',
      'FastAPI',
      'GoHighLevel',
      'Vapi.ai',
      'Retell.ai',
      'Firebase',
    ];

    return TarjetaSeccion(
      title: 'Mi Stack Tecnológico',
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: tecnologias
            .map((tech) => ChipTecnologia(label: tech))
            .toList(),
      ),
    );
  }
}