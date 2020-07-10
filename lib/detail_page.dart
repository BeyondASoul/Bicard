import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/services.dart';

import 'data.dart';

class DetailPage extends StatelessWidget {
  final Info info;

  const DetailPage({Key key, this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFe9ecef),
      body: SafeArea(
        top: true,
        right: true,
        left: true,
        bottom: false,
        child: Stack(
          children: <Widget>[
            FlipInY(
              duration: Duration(milliseconds: 700),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 150),
                          Divider(color: Color(0xFF6c757d)),
                          SizedBox(height: 50),
                          Text(
                            info.es,
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 40,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                      ),
                          Text(
                            info.presente,
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 30,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            info.pronunciacion1,
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 30,
                              color: Color(0XAA6c757d),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          info.pasado==null ? Container() : new Text(
                              "${info.pasado}",
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 30,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          info.pronunciacion2==null ? Container() : new Text(
                              "${info.pronunciacion2}",
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 30,
                              color: Color(0XAA6c757d),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          info.participio==null ? Container() : new Text(
                              "${info.participio}",
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 30,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          info.pronunciacion3==null ? Container() : new Text(
                              "${info.pronunciacion3}",
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 30,
                              color: Color(0XAA6c757d),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
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
            Positioned(
              right: 20,
              child: Hero(
                transitionOnUserGestures: true,
                tag: info.id,
                child: Image.asset(info.image)),
            ),
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                HapticFeedback.mediumImpact();
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}