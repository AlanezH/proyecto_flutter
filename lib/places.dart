import 'package:flutter/material.dart';
import 'package:proyecto_flutter/home.dart';
import 'package:proyecto_flutter/profile_places.dart';
import 'package:proyecto_flutter/search_places.dart';

class Places extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlacesState();
  }
}

class _PlacesState extends State<Places> {
  // Índice de la pantalla actual
  int currentIndex = 0;

  // Lista de pantallas a mostrar
  final List<Widget> pantallas = <Widget>[
    MyHome(),
    SearchPlaces(),
    ProfilePlaces(),
  ];

  // Función para cambiar de pantalla
  void cambiarPantalla(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pantallas[currentIndex],

      // Barra de navegación inferior
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Color(0xFF574ACF),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        onTap: cambiarPantalla,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
