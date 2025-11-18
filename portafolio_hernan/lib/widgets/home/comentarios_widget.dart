import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portafolio_hernan/widgets/shared/tarjeta_seccion.dart';

// Widget 
class ComentariosWidget extends StatelessWidget {
  // Constructor 
  ComentariosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TarjetaSeccion(
      // Widget 
      title: 'Deja tu comentario',
      child: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              labelText: 'Nombre',
            ),
          ),
          const SizedBox(height: 16),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Mensaje',
            ),
            maxLines: 4,
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    '¡Función de comentarios en construcción!',
                    style: GoogleFonts.inter(color: Colors.white),
                  ),
                  backgroundColor: Colors.blueAccent,
                ),
              );
            },
            child: const Text('Enviar'),
          ),
        ],
      ),
    );
  }
}