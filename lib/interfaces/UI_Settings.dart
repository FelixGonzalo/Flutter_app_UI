import 'package:flutter/material.dart';
import 'package:flutter_app_ui1/recursos/FondoTop.dart';

class UI_Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Stack(
      children: <Widget>[
        FondoTop(),
        Column(
          children: <Widget>[
            Center(
              child: Container(
                  child: Stack(
                children: <Widget>[
                  Container(
                    padding:
                        EdgeInsets.only(top: 50, bottom: 0, right: 0, left: 0),
                    child: CircleAvatar(
                      backgroundImage: ExactAssetImage('images/carrusel1.jpg'),
                      minRadius: 10,
                      maxRadius: 50,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 120, bottom: 0, right: 0, left: 70),
                    padding:
                        EdgeInsets.only(top: 3, bottom: 3, right: 3, left: 3),
                    decoration: BoxDecoration(
                        color: Color(0xFF8E2DE2),
                        //border: Border.all(color: Colors.grey),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5.0,
                            color: Colors.black.withOpacity(.5),
                            //offset: Offset(6.0, 5.0),
                          ),
                        ],
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            topRight: const Radius.circular(10.0),
                            bottomLeft: const Radius.circular(10.0),
                            bottomRight: const Radius.circular(10.0))),
                    child: Icon(Icons.edit, color: Colors.white),
                  )
                ],
              )),
            ),
            Container(
                margin: EdgeInsets.only(top: 12, bottom: 20, right: 0, left: 0),
                child: Center(
                  child: Text(
                    'JOHN DOE',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 15, right: 0, left: 0),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      settingsCantidad(
                          '30',
                          Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                            size: 40,
                          ),
                          0,
                          50),
                      Container(
                          padding: EdgeInsets.only(
                              top: 0, bottom: 0, right: 0, left: 50),
                          child: Text(
                            'Connections',
                            style: TextStyle(fontSize: 14),
                          )),
                    ],
                  ),
                  Column(

                    children: <Widget>[
                      settingsCantidad(
                          ' 10',
                          Icon(
                            Icons.chat_bubble_outline,
                            color: Colors.black,
                            size: 40,
                          ),
                          50,
                          0),
                      Text(
                        'Chats',
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  )
                ],
              ),
            ),
            formularioDato('Status', 'Sab jaana jaruri hai', 15, 0, 25, 25,320),
            formularioDato('Email', 'maibdoehai@doerox.com', 15, 0, 25, 25,320),
            formularioDato('Phone Number', '+91 9123456789', 15, 0, 25, 25,260),
            formularioDato(
                'Date of birth', '31st Februry, 1989', 15, 20, 25, 25,280),
            RaisedButton(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, right: 150, left: 150),
                color: Color(0xFFD31027),
                textColor: Colors.white,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                child: Text(
                  "Log out",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {}),
          ],
        )
      ],
    ));
  }

  Row settingsCantidad(String num, Icon icon, double der, double izq) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 0, bottom: 0, right: 0, left: izq),
          child: icon,
        ),
        Container(
            padding: EdgeInsets.only(top: 0, bottom: 0, right: der, left: 0),
            child: Text(
              num,
              style: TextStyle(fontSize: 30),
            )),
      ],
    );
  }

  Container formularioDato(String nombre, String ejemplo, double arriba,
      double abajo, double der, double izq,double acomodar) {
    return Container(
      padding: EdgeInsets.only(top: 0, bottom: 0, right: 0, left: 0),
      margin:
          EdgeInsets.only(top: arriba, bottom: abajo, right: der, left: izq),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 0, bottom: 0, right: acomodar, left: 0),
            child: Text(nombre),
          ),
          TextField(
            decoration: InputDecoration(hintText: ejemplo),
          ),
        ],
      ),
    );
  }
} //FIN CLASE
