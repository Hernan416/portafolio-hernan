import 'package:flutter/material.dart';
import 'package:portafolio_hernan/rutas.dart';
import 'package:portafolio_hernan/screens/pagina_inicio.dart';
import 'package:portafolio_hernan/screens/pagina_sobre_mi.dart';

class PantallaPrincipal extends StatefulWidget {
  PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int _selectedIndex = 0;

  static const List<Widget> _paginas = <Widget>[
    PaginaInicio(),
    PaginaSobreMi(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hernán Narváez'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_pin_rounded),
            tooltip: 'Firma y Contacto',
            onPressed: () {
              Navigator.pushNamed(context, Rutas.contact);
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _paginas,
      ),
      // 3. barra de navegación 
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Inicio', // Botón 1
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Sobre Mí', // Botón 2
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Theme.of(context).cardColor,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.white54,
      ),
    );
  }
}