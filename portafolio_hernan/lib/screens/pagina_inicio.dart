import 'package:flutter/material.dart';
import 'package:portafolio_hernan/widgets/home/cabecera_widget.dart';

class PaginaInicio extends StatelessWidget {
  const PaginaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    // La centramos para que se vea mejor.
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CabeceraWidget(),
        ],
      ),
    );
  }
}