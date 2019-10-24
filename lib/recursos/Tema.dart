import 'package:flutter/material.dart';

ThemeData Tema() {
  //codigo base obtenido de
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
        headline: base.headline.copyWith(
          fontFamily: 'Roboto',
          fontSize: 22.0,
          color: Colors.green,
        ),
        title: base.title.copyWith(
            fontFamily: 'Merriweather',
            fontSize: 15.0,
            color: Colors.green
        ),
        display1: base.display1.copyWith(
          decorationStyle: null,
          fontFamily: 'Aria',
          fontSize: 24.0,
          color: Colors.white,
        ),
        display2: base.headline.copyWith(
          fontFamily: 'Merriweather',
          fontSize: 22.0,
          color: Colors.grey,
        ),
        caption: base.caption.copyWith(
          color: Color(0xFFCCC5AF),
        ),
        body1: base.body1.copyWith(color: Color(0xFF807A6B))
    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
      /*primaryColor: Colors.purple[100],//Color(0xffce107c),
      //primaryColor: Color(0xff4829b2),
      indicatorColor: Color(0xFF807A6B),
      scaffoldBackgroundColor: Color(0xFFF5F5F5),
      accentColor: Color(0xFFFFF8E1),
      buttonColor: Colors.green,
      backgroundColor: Colors.white,


      textTheme: _basicTextTheme(base.textTheme), //llamas a lo que se hace arriba
      //textTheme: Typography().white, //es otro por defecto

      //falta mejorar la llamada
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 20.0,
      ),

      //nose como llamarlo
      tabBarTheme: base.tabBarTheme.copyWith(
        labelColor: Color(0xffce107c),
        unselectedLabelColor: Colors.grey,
      )*/
      );
}

/*
* Como llamar:
* Style: Theme.of(context).textTheme.headline
* Color: Theme.of(context).accentColor
* color: Theme.of(context).iconTheme.color,
* */
