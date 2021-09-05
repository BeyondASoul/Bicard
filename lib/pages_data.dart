import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'data.dart';

final liquidPages = [
  languagePage(colorPagina[0]),
  languagePage(colorPagina[1]),
  languagePage(colorPagina[2]),
];

Container languagePage(ColorPagina pagina) {
  return Container(
    child: Scaffold(
      backgroundColor: Color(pagina.colorPrincipal),
      appBar: AppBar(
        backgroundColor: Color(pagina.colorPrincipal),
        elevation: 0,
        title: Text(
          'Bicard',
          style: TextStyle(
            fontSize: 30.0,
            fontFamily: 'Avenir',
            color: Color(pagina.colorTextoPrincipal),
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage(pagina.imageIdioma),
              ),
              Text(
                pagina.idioma,
                style: TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'Avenir',
                  color: Color(pagina.colorTextoPrincipal),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
