import 'package:flutter/material.dart';
import 'package:bicard/data.dart';
import 'constants.dart';

class DetailPage extends StatelessWidget {
  final VerbInfo verbInfo;

  const DetailPage({Key key, this.verbInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTarjetaFondo,
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
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 150),
                        Divider(color: Colors.red),
                        SizedBox(height: 0),
                        Text(
                          '#'+verbInfo.numero+': '+verbInfo.es,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 50,
                            color: colorPrincipal,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.center,
                    ),
                        Text(
                          'Presente: '+verbInfo.presente,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 30,
                            color: colorPrincipal,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Pronunciación: '+verbInfo.pronunciacion1,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Pasado: '+verbInfo.pasado,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 30,
                            color: colorPrincipal,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Pronunciación: '+verbInfo.pronunciacion2,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Participio: '+verbInfo.participio,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 30,
                            color: colorPrincipal,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Pronunciación: '+verbInfo.pronunciacion3,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 50),
                        Divider(color: Colors.red),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 20,
              child: Hero(
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