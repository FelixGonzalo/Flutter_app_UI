import 'package:flutter/material.dart';

class MenuOpciones extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(top: 0, bottom: 0, right: 0, left: 0),
      margin: EdgeInsets.only(top: 0, bottom: 10, right: 2, left: 2),
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
          borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(40.0),
              topRight: const Radius.circular(40.0),
              bottomLeft: const Radius.circular(40.0),
              bottomRight: const Radius.circular(40.0))),
      child: TabBar(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Colors.blue,
        /*indicator: ShapeDecoration(
            color: Color(0xFF771DE1),
            shape: BeveledRectangleBorder(
            )
        ),*/
        indicator: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF771DE1), Color(0xFF4A00E0)]),
            borderRadius: BorderRadius.circular(50),
            color: Colors.redAccent),
        tabs: [
          Tab(
            text: "Home",
            icon: Icon(Icons.dashboard),
          ),
          Tab(
            text: "Connections",
            icon: Icon(Icons.favorite_border),
          ),
          Tab(
            text: "Chats",
            icon: Icon(Icons.chat_bubble_outline),
          ),
          Tab(
            text: "Profile",
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
