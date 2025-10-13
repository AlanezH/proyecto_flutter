

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_flutter/description_place.dart';

class MyHome extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    final descriptionPlace =Container(
      margin: EdgeInsets.only(
        top: 250,
        left: 30,
        right: 30
      ),
      child: DescriptionPlace(),
    );


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "My Places"
        ),
      ),
      body:Stack(
        children: <Widget>[
          descriptionPlace
        ],
      )
    );
  }
}