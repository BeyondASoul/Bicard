import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'data.dart';

final liquidPages = [

  Container(
    child: Scaffold(
      backgroundColor: Color(colorPagina[0].colorPrincipal),
      appBar: AppBar(
        backgroundColor: Color(colorPagina[0].colorPrincipal),
        elevation: 0,
        title: Text('Idioma',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Avenir',
                  color: Color(colorPagina[0].colorTextoPrincipal),
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
                image: AssetImage(colorPagina[0].imageIdioma),
              ),
              Text('Elige un idioma:',
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'Avenir',
                color: Color(colorPagina[0].colorTextoPrincipal),
                fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ),
  Container(
    child: Scaffold(
      backgroundColor: Color(colorPagina[1].colorPrincipal),
      appBar: AppBar(
        backgroundColor: Color(colorPagina[1].colorPrincipal),
        elevation: 0,
        title: Text('Idioma',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Avenir',
                  color: Color(colorPagina[1].colorTextoPrincipal),
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
                image: AssetImage(colorPagina[1].imageIdioma),
              ),
              Text('Elige un idioma:',
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'Avenir',
                color: Color(colorPagina[1].colorTextoPrincipal),
                fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ),
  Container(
    child: Scaffold(
      backgroundColor: Color(colorPagina[2].colorPrincipal),
      appBar: AppBar(
        backgroundColor: Color(colorPagina[2].colorPrincipal),
        elevation: 0,
        title: Text('Idioma',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Avenir',
                  color: Color(colorPagina[2].colorTextoPrincipal),
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
                image: AssetImage(colorPagina[2].imageIdioma),
              ),
              Text('Elige un idioma:',
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'Avenir',
                color: Color(colorPagina[2].colorTextoPrincipal),
                fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ),
];
