import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/services.dart';

import 'data.dart';

class DetailPage extends StatelessWidget {
  final Info info;
  final int colorFondo;

  const DetailPage({Key key, this.info, this.colorFondo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(colorFondo),
      appBar: AppBar(
        backgroundColor: Color(colorFondo),
        elevation: 0,
        leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Color(0xFF000000),
                  onPressed: () {
                    HapticFeedback.mediumImpact();
                    Navigator.pop(context);
                  },
                ),
      ),
      body: Center(
        child: SafeArea(
          top: true,
          right: true,
          left: true,
          bottom: false,
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Hero(
                      transitionOnUserGestures: true,
                      tag: info.id,
                      child: Image.asset(info.image)
                    ),
                    Divider(color: Color(0xFF6c757d)),
                    SizedBox(height: 50),
                    FadeInRight(
                      child: Text(
                        info.es,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 40,
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    FadeInRight(
                      delay: Duration(milliseconds: 300),
                      child: Text(
                        info.presente,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 35,
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    FadeInRight(
                      delay: Duration(milliseconds: 600),
                      child: Text(
                        info.pronunciacion1,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 35,
                          color: Color(0XAA6c757d),
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    info.pasado==null ? Container() : FadeInRight(
                      delay: Duration(milliseconds: 900),
                      child: new Text(
                      "${info.pasado}",
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 35,
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                      ),
                    ),
                    info.pronunciacion2==null ? Container() : FadeInRight(
                      delay: Duration(milliseconds: 1200),
                      child: new Text(
                      "${info.pronunciacion2}",
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 35,
                        color: Color(0XAA6c757d),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                      ),
                    ),
                    info.participio==null ? Container() : FadeInRight(
                      delay: Duration(milliseconds: 1500),
                      child: new Text(
                      "${info.participio}",
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 35,
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                      ),
                    ),
                    info.pronunciacion3==null ? Container() : FadeInRight(
                      delay: Duration(milliseconds: 1800),
                      child: new Text(
                      "${info.pronunciacion3}",
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 35,
                        color: Color(0XAA6c757d),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 50),
                    Divider(color: Color(0xFF000000)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}