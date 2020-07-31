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
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Hero(
                      transitionOnUserGestures: true,
                      tag: info.id,
                      child: Image.asset(info.image)
                    ),
                    Divider(color: Color(0xFF000000)),
                    SizedBox(height: 50),
                    ElasticInRight(
                      child: Text(
                        info.es,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 40,
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ElasticInRight(
                      delay: Duration(milliseconds: 100),
                      child: Text(
                        info.presente,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 35,
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ElasticInRight(
                      delay: Duration(milliseconds: 200),
                      child: Text(
                        info.pronunciacion1,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 35,
                          color: Color(0XAA6c757d),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    info.pasado==null ? Container() : ElasticInRight(
                      delay: Duration(milliseconds: 300),
                      child: new Text(
                      "${info.pasado}",
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 35,
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                      ),
                    ),
                    info.pronunciacion2==null ? Container() : ElasticInRight(
                      delay: Duration(milliseconds: 400),
                      child: new Text(
                      "${info.pronunciacion2}",
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 35,
                        color: Color(0XAA6c757d),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                      ),
                    ),
                    info.participio==null ? Container() : ElasticInRight(
                      delay: Duration(milliseconds: 500),
                      child: new Text(
                      "${info.participio}",
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 35,
                        color: Color(0xFF000000),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                      ),
                    ),
                    info.pronunciacion3==null ? Container() : ElasticInRight(
                      delay: Duration(milliseconds: 600),
                      child: new Text(
                      "${info.pronunciacion3}",
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 35,
                        color: Color(0XAA6c757d),
                        fontWeight: FontWeight.w300,
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