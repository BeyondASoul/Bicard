import 'package:bicard/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'data.dart';

class ButtonPage extends StatefulWidget {
  ButtonPage({Key key}) : super(key: key);

  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF242423),
      appBar: AppBar(
        backgroundColor: Color(0xFF242423),
        elevation: 0,
        actions: <Widget>[

        ],
        ),
      body: Container(
        alignment: Alignment.center,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Con Bicard:',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontFamily: 'Avenir',
                          color: Color(0xFFe9ecef),
                          fontWeight: FontWeight.w500,
                          ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: Swiper(
                    itemCount: colorPagina.length,
                    layout: SwiperLayout.DEFAULT,
                    pagination: SwiperPagination(
                      builder: FractionPaginationBuilder(
                      color: Color(0xFFe9ecef),
                      activeColor: Color(0xFFe9ecef),
                      activeFontSize: 50,
                      fontSize: 20,
                      ),
                    ),
                    itemBuilder: (context , index) {
                      return InkWell(
                        onTap: () {
                         Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => HomePage(
                                colorPagina: colorPagina, 
                                i: colorPagina[index].idiomaid - 1,
                              ),
                            ),
                          );
                        },
                        child: Stack(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(height:200),
                                Card(
                                  elevation: 30,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)
                                  ),
                                  color: Color(colorPagina[index].colorPrincipal),
                                  child: Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(height:30),
                                        Text(
                                          colorPagina[index].idioma,
                                          style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 40,
                                            color: Color(colorPagina[index].colorTarjetaFondo),
                                            fontWeight: FontWeight.w700,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text(
                                              'Ver más',
                                              style: TextStyle(
                                                fontFamily: 'Avenir',
                                                fontSize: 20,
                                                color: Color(colorPagina[index].colorTarjetaFondo),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              color: Color(colorPagina[index].colorTarjetaFondo),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                  Image.asset(
                                    colorPagina[index].imageIdioma
                                  ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }, //itemBuilder
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}