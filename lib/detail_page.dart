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
        bottom: false,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 200),
                        Divider(color: Colors.black38),
                        SizedBox(height: 50),
                        Text(
                          'Presente: '+verbInfo.presente,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 40,
                            color: colorPrincipal,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Pasado: '+verbInfo.pasado,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 40,
                            color: colorPrincipal,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Participio: '+verbInfo.participio,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 40,
                            color: colorPrincipal,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 30),
                        Divider(color: Colors.black38),
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
            Positioned(
              top: 80,
              left: 30,
              child: Text(
                verbInfo.es,
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 50,
                  color: colorPrincipal,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.left,
              ),
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