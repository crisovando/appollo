import 'package:apollo/routes/Routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
            icon: Icons.home,
            text: 'Inicio',
            onTap: () => Navigator.pushReplacementNamed(context, Routes.inicio),
          ),
          _createDrawerItem(
            icon: Icons.assignment,
            text: 'Informes',
            onTap: () => Navigator.pushReplacementNamed(context, Routes.informes),
          ),
          _createDrawerItem(icon: Icons.contacts,text: 'Contacts',),
          Divider(),
          _createDrawerItem(icon: Icons.collections_bookmark, text:           'Steps'),
          _createDrawerItem(icon: Icons.face, text: 'Authors'),
          _createDrawerItem(icon: Icons.account_box, text: 'Flutter Documentation'),
          _createDrawerItem(icon: Icons.stars, text: 'Useful Links'),
          Divider(),
          _createDrawerItem(icon: Icons.bug_report, text: 'Report an issue'),
          ListTile(
            title: Text('0.0.1'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

Widget _createHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://res.cloudinary.com/menf-tech/image/upload/c_scale,h_180,q_74/v1579465553/river_njtonf.jpg"),
            fit: BoxFit.cover
          )
      ),
      child: Stack(children: <Widget>[
        Positioned(
          bottom: 12.0,
          left: 16.0,
          child: Text("Flutter Step-by-Step",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w500))),
      ]));
}

Widget _createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}