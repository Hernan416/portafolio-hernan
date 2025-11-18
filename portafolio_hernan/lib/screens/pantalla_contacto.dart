import 'package:flutter/material.dart';
import 'package:portafolio_hernan/abrir_links.dart'; // Importa tu helper de links
import 'package:portafolio_hernan/widgets/contact/boton_contacto.dart';

class PantallaContacto extends StatelessWidget {
  PantallaContacto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firma y Contacto'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Text(
                    'Hernán Narváez',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Systems Engineering | AI Developer',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.blueAccent.shade100),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Contacto',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            BotonContacto(
              icon: Icons.email,
              text: 'hernan.quabund@gmail.com', 
              onTap: () {
                LinksHelper.abrirEmail('hernan.quabund@gmail.com'); // EMAIL
              },
            ),
            BotonContacto(
              icon: Icons.link, 
              text: 'LinkedIn', 
              onTap: () {
                LinksHelper.abrirUrl('www.linkedin.com/in/hernan-narvaez1608'); // URL
              },
            ),
            BotonContacto(
              icon: Icons.code, 
              text: 'GitHub', 
              onTap: () {
                LinksHelper.abrirUrl('https://github.com/Hernan416'); // URL
              },
            ),
          ],
        ),
      ),
    );
  }
}