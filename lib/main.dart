import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_flutter/places.dart';
import 'package:proyecto_flutter/places_cupertino.dart';

import 'home.dart';

void main (){
  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Places",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: PlacesCupertino(),
    );
  }

}
