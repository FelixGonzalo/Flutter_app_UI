import 'package:flutter/material.dart';
import 'package:flutter_app_ui1/recursos/FondoTop.dart';

class UI_Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Stack(
      children: <Widget>[
        FondoTop(),
        ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            contenedorUserHome(
                'images/carrusel1.jpg',
                '\nJANE DOE',
                '25\n',
                'This is some description about the person,\n'
                    'what he/ she expects from the partner and\n'
                    'also what they want to achieve in the life.',
                '\n10 mins away.'),
            contenedorUserHome(
                'images/carrusel2.jpg',
                '\nJANE DOE',
                '25\n',
                'This is some description about the person,\n'
                    'what he/ she expects from the partner and\n'
                    'also what they want to achieve in the life.',
                '\n10 mins away.'),
            contenedorUserHome(
                'images/carrusel3.jpg',
                '\nJANE DOE',
                '25\n',
                'This is some description about the person,\n'
                    'what he/ she expects from the partner and\n'
                    'also what they want to achieve in the life.',
                '\n10 mins away.'),
          ],
        )
      ],
    ));
  }

  Container contenedorUserHome(String ubicaImg, String nombre, String edad,
      String texto, String estado) {
    return Container(
      padding: EdgeInsets.only(top: 0, bottom: 0, right: 3, left: 3),
      margin: EdgeInsets.only(top: 40, bottom: 0, right: 0, left: 0),
      child: Column(
        children: <Widget>[
          Image.asset(
            ubicaImg,
            width: 300,
            height: 370,
            fit: BoxFit.fill,
          ),
          Container(
            padding: EdgeInsets.only(top: 0, bottom: 20, right: 15, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    child: textoUserHome(
                        nombre, 18, Colors.black, FontStyle.normal)),
                Container(
                    child:
                        textoUserHome(edad, 14, Colors.grey, FontStyle.normal)),
                Container(
                    child:
                    textoUserHome(texto, 16, Colors.black, FontStyle.normal)),
                Container(
                    child:
                    textoUserHome(estado, 14, Colors.black, FontStyle.italic)),
              ],
            ),
            decoration: BoxDecoration(
              //border: Border.all(color: Colors.grey),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5.0,
                  color: Colors.black26.withOpacity(.2),
                  //offset: Offset(6.0, 5.0),
                ),
              ],
              color: Colors.white,
            ),
          ),
          Row(
            children: <Widget>[
              botonesUserHome(
                  Colors.red, Icon(Icons.favorite_border, color: Colors.white)),
              botonesUserHome(Colors.green,
                  Icon(Icons.airplanemode_active, color: Colors.white))
            ],
          )
        ],
      ),
    );
  }

  Text textoUserHome(String contenido, double size, Color color, FontStyle estilo) {
    return Text(
      contenido,
      textAlign: TextAlign.start,
      style: TextStyle(
          fontFamily: 'Source Sans Pro',
          fontSize: size,
          color: color,
          fontStyle: estilo),
    );
  } //finMitexto
} //fin de clase

Widget botonesUserHome(Color color, Icon icon) {
  return FlatButton.icon(
    padding: EdgeInsets.only(top: 15, bottom: 15, right: 30, left: 30),
    color: color,
    icon: icon, //`Icon` to display
    label: Text('Message',
        style:
            TextStyle(color: Colors.white, fontSize: 18)), //`Text` to display
    onPressed: () {
      //Code to execute when Floating Action Button is clicked
      //...
    },
  );
}
