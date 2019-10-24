import 'package:flutter/material.dart';
class FondoTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      width: MediaQuery.of(context).size.width,
      height: 225.0,
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
              colors: [Color(0xFF771DE1), Color(0xFF4A00E0)],
              stops: [0.3, 0.6],
              begin: FractionalOffset.topRight,
              end: FractionalOffset.bottomLeft)),
    );
  }
}
