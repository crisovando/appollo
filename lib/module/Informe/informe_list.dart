import 'package:flutter/material.dart';
import 'package:apollo/widget/drawer.dart';

class InformesPage extends StatelessWidget {
  static const String routeName = '/informes';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Informes"),
        ),
        drawer: AppDrawer(),
        body: Center(child: Text("Informes")));
  }
}