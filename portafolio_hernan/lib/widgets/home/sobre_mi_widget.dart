import 'package:flutter/material.dart';
import 'package:portafolio_hernan/widgets/shared/tarjeta_seccion.dart';

class SobreMiWidget extends StatelessWidget {
  SobreMiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TarjetaSeccion(
      title: 'Sobre Mí',
      child: Text(
        'Comencé mi trayectoria de forma independiente, desarrollando chatbots y agentes de llamadas con IA para clientes en Latinoamérica, incluso antes de que se convirtiera en un servicio tan popular.',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}