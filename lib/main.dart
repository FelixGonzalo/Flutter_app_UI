import 'package:flutter/material.dart';
import 'recursos/Tema.dart';
import 'interfaces/UI_Landing.dart';
import 'interfaces/UI_Connections.dart';
import 'interfaces/UI_Messages.dart';
import 'interfaces/UI_Settings.dart';
import 'recursos/MenuOpciones.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Tema(),
      home: Estructura(),
    );
  }
}

class Estructura extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: MenuOpciones(),
          body: TabBarView(
            children: [
              UI_Landing(),
              UI_Connections(),
              UI_Messages(),
              UI_Settings(),
            ],
          ),
        ),
      ),
    );
  }
}