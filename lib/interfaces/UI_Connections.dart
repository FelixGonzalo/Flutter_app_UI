import 'package:flutter/material.dart';
import 'package:flutter_app_ui1/recursos/FondoTop.dart';

class UI_Connections extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Stack(
      children: <Widget>[
        FondoTop(),
        ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50, bottom: 20, right: 0, left: 30),
              child: Text(
                'YOUR CONNECTIONS',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 2, bottom: 2, right: 0, left: 0),
              margin: EdgeInsets.only(top: 0, bottom: 0, right: 20, left: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  //border: Border.all(color: Colors.grey),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      color: Colors.black.withOpacity(.2),
                      //offset: Offset(6.0, 5.0),
                    ),
                  ],
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(15.0),
                      topRight: const Radius.circular(15.0),
                      bottomLeft: const Radius.circular(15.0),
                      bottomRight: const Radius.circular(15.0)
                      //AGREGAR MAS CONNECTIONS
                      )),
              child: Column(
                children: <Widget>[
                  userConnections('images/carrusel3.jpg', 'Jim Doe',
                      'Enjoying life and living with love.'),
                  userConnections('images/carrusel2.jpg', 'Jane Doe',
                      'Enjoying life and living with love.'),
                  userConnections('images/carrusel1.jpg', 'John Doe',
                      'Enjoying life and living with love.'),
                  userConnections('images/carrusel3.jpg', 'Ek aur Doe',
                      'Enjoying life and living with love.'),
                ],
              ),
            )
          ],
        )
      ],
    ));
  }

  Container userConnections(
      String direccionImg, String nombre, String descrip) {
    return Container(
      padding: EdgeInsets.only(top: 15, bottom: 15, right: 0, left: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              textoUserConnections(nombre, 18, Colors.black, FontStyle.normal),
              textoUserConnections(descrip, 15, Colors.black, FontStyle.italic),
              botonesUserConnections(Color(0xFF308DC3), Icon(Icons.close, color: Colors.white)),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 0, bottom: 0, right: 20, left: 0),
                child: CircleAvatar(
                  backgroundImage: ExactAssetImage(direccionImg),
                  minRadius: 10,
                  maxRadius: 50,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container textoUserConnections(
      String contenido, double size, Color color, FontStyle estilo) {
    return Container(
      padding: EdgeInsets.only(top: 0, bottom: 0, right: 0, left: 20),
      child:Text(
        contenido,
        textAlign: TextAlign.start,
        style: TextStyle(
            fontFamily: 'Source Sans Pro',
            fontSize: size,
            color: color,
            fontStyle: estilo),
      ) ,
    );
  } //finMitexto
} //fin clase

Container botonesUserConnections(Color color, Icon icon) {
  return Container(
    padding: EdgeInsets.only(top: 0, bottom: 0, right: 0, left: 20),
    child: FlatButton.icon(
      padding: EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 10),
      color: color,
      icon: icon,
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0)),
      label: Text('Remove',
          style:
          TextStyle(color: Colors.white, fontSize: 17)), //`Text` to display
      onPressed: () {
        //Code to execute when Floating Action Button is clicked
        //...
      },
    ),
  );
}
