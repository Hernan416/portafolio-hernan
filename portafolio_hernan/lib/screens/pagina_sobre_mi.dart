import 'package:flutter/material.dart';
import 'package:portafolio_hernan/widgets/home/comentarios_widget.dart';
import 'package:portafolio_hernan/widgets/home/footer_widget.dart';
import 'package:portafolio_hernan/widgets/home/que_hago_widget.dart';
import 'package:portafolio_hernan/widgets/home/sobre_mi_widget.dart';
import 'package:portafolio_hernan/widgets/home/stack_widget.dart';

class PaginaSobreMi extends StatelessWidget {
  const PaginaSobreMi({super.key});

  @override
  Widget build(BuildContext context) {
    // Esta página contiene el SingleChildScrollView con todos tus widgets
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SobreMiWidget(),
            const SizedBox(height: 24),
            QueHagoWidget(),
            const SizedBox(height: 24),
            StackWidget(),
            const SizedBox(height: 24),
            ComentariosWidget(),
            const SizedBox(height: 32),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}