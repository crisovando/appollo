import 'package:apollo/module/Informe/informe_list.dart';
import 'package:apollo/module/Inicio/inicio.dart';
import 'package:flutter/material.dart';
import 'package:apollo/routes/Routes.dart';

void main() {

  runApp(
    new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: InicioPage(),
      routes:  {
        Routes.informes: (context) => InformesPage(),
        Routes.inicio: (context) => InicioPage(),
      },
    )
  );
}
