import 'package:flutter/material.dart';
import 'package:apollo/widget/drawer.dart';

class InicioPage extends StatelessWidget {
  static const String routeName = '/inicio';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Inicio"),
        ),
        drawer: AppDrawer(),
        body: Center(child: Text("Inicio")));
  }
}