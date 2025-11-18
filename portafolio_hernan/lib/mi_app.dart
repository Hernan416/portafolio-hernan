import 'package:flutter/material.dart';
import 'package:portafolio_hernan/rutas.dart'; // Importa 'rutas.dart'
import 'package:portafolio_hernan/tema.dart'; // Importa 'tema.dart'

// La clase principal de la app
class MiApp extends StatelessWidget {
  // Constructor sin 'const'
  MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portafolio Hernán Narváez',
      debugShowCheckedModeBanner: false,
      // 1. Usamos nuestro tema simple
      theme: MiTema.temaOscuro, // Clase y variable
      // 2. Usamos nuestras rutas simples
      initialRoute: Rutas.home, // Clase
      routes: Rutas.routes,
    );
  }
}