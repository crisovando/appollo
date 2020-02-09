import 'package:flutter/material.dart';
import 'package:apollo/widget/drawer.dart';

Card topArea() => Card(
  margin: EdgeInsets.all(10.0),
  elevation: 1.0,
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(50.0))),
  child: Container(
      decoration: BoxDecoration(
          gradient: RadialGradient(
              colors: [Color(0xFF015FFF), Color(0xFF015FFF)])),
      padding: EdgeInsets.all(5.0),
      // color: Color(0xFF015FFF),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              Text("Savings",
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Text(r"$ " "95,940.00",
                  style: TextStyle(color: Colors.white, fontSize: 24.0)),
            ),
          ),
          SizedBox(height: 35.0),
        ],
      )),
);

class InformesPage extends StatelessWidget {
  static const String routeName = '/informes';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Informes"),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              topArea(),
              SizedBox(
                height: 40.0,
                child: Icon(
                  Icons.refresh,
                  size: 35.0,
                  color: Color(0xFF015FFF),
                ),
              ),
              // displayAccoutList(),
            ],
          ),
        ),
      ),
    );
  }
}