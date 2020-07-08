import 'package:flutter/material.dart';

import 'data.dart';

class DetailPage extends StatelessWidget {
  final VerbInfo verbInfo;

  const DetailPage({Key key, this.verbInfo}) : super(key: key);

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
            SingleChildScrollView(
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
                        Hero(
                          tag: 'card',
                          child: Text(
                            verbInfo.es,
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 40,
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                    ),
                        ),
                        Text(
                          'Presente: '+verbInfo.presente,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 30,
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Pronunciación: '+verbInfo.pronunciacion1,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 30,
                            color: Color(0XAA6c757d),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Pasado: '+verbInfo.pasado,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 30,
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Pronunciación: '+verbInfo.pronunciacion2,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 30,
                            color: Color(0XAA6c757d),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Participio: '+verbInfo.participio,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 30,
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Pronunciación: '+verbInfo.pronunciacion3,
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
            Positioned(
              right: 20,
              child: Hero(
                transitionOnUserGestures: true,
                tag: verbInfo.verbID,
                child: Image.asset(verbInfo.image)),
            ),
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}