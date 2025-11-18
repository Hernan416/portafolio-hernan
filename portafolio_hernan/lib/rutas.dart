import 'package:flutter/material.dart';
import 'package:portafolio_hernan/screens/pantalla_contacto.dart'; // Importa la pantalla 
import 'package:portafolio_hernan/screens/pantalla_principal.dart'; // Importa la pantalla 

// Clase de rutas
class Rutas {
  static const String home = '/';
  static const String contact = '/contact';

  static Map<String, WidgetBuilder> get routes {
    return {
      home: (context) => PantallaPrincipal(), // Clase 
      contact: (context) => PantallaContacto(), // Clase 
    };
  }
}