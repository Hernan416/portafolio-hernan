import 'package:flutter/material.dart';
import 'package:portafolio_hernan/widgets/shared/tarjeta_seccion.dart';
import 'package:portafolio_hernan/widgets/shared/servicio_item.dart';

class QueHagoWidget extends StatelessWidget {
  QueHagoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TarjetaSeccion(
      title: '¿Qué Hago?',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Mi especialidad es construir desde cero:',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 16),
          ServicioItem(
            icon: Icons.smart_toy,
            text: 'Agentes de IA Avanzados (Chatbots y Voz).',
          ),
          ServicioItem(
            icon: Icons.sync_alt,
            text: 'Automatizaciones Complejas (CRMs, APIs, etc.).',
          ),
          ServicioItem(
            icon: Icons.lightbulb,
            text: 'Consultoría e Implementación (Salud, E-Commerce y más).',
          ),
        ],
      ),
    );
  }
}