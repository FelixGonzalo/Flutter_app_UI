import 'package:flutter/material.dart';
import 'package:flutter_app_ui1/recursos/FondoTop.dart';

class UI_Messages extends StatelessWidget {
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
                'YOUR CHATS',
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
                  userMessages('images/carrusel3.jpg', 'Jim Doe', 'seen 2 mins','Hey want to catch up today?'),
                  userMessages('images/carrusel2.jpg', 'Jane Doe', 'online','Ohh thats cool. Would love to \n meet you! Dinner?'),
                  userMessages('images/carrusel1.jpg', 'John Doe', 'seen 10 mins ago','I cannot believe this! This is \nridiculous!'),
                  userMessages('images/carrusel3.jpg', 'Ek aur Doe', 'online','Bhai mille timepass hojayega\n dono ka'),
                  userMessages('images/carrusel2.jpg', 'Jim Doe', 'seen 2 mins','Tu mat mil bhai mood nai\n bigadna milke'),
                  userMessages('images/carrusel1.jpg', 'John Doe', 'seen 10 mins ago','Hey want to catch up today?'),
                  userMessages('images/carrusel3.jpg', 'Ek aur Doe', 'online','Hello, How are you??'),
                  userMessages('images/carrusel2.jpg', 'Jane Doe', 'online','I forgot my cell'),
                ],
              ),
            )
          ],
        )
      ],
    ));
  }

  Container userMessages(
      String direccionImg, String nombre, String descrip, String chat) {
    return Container(
      padding: EdgeInsets.only(top: 15, bottom: 15, right: 0, left: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              textoUserConnections(nombre, 18, Colors.black, FontStyle.normal,0,0,0,20),
              textoUserConnections(descrip, 15, Colors.black, FontStyle.italic,0,0,0,20),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 0, bottom: 0, right: 0, left: 20),
                        child: Icon(
                            Icons.chat_bubble_outline,
                            color: Colors.black),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      textoUserConnections(chat, 14, Colors.black, FontStyle.normal,0,0,0,0),
                    ],
                  )
                ],
              )

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

Container textoUserConnections(String contenido, double size, Color color, FontStyle estilo,double arriba, double abajo, double der, double izq) {
  return Container(
    padding: EdgeInsets.only(top: arriba, bottom: abajo, right: der, left: izq),
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


}//FIN CLASE