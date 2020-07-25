import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/services.dart';

import 'category_page.dart';
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
      appBar: AppBar(
        backgroundColor: Color(0xFF242423),
        elevation: 0,
      ),
      backgroundColor: Color(0xFF242423),
      body: Container(
        alignment: Alignment.center,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    FadeInDown(
                      duration: Duration(milliseconds: 700),
                      child: Text(
                        '¿Qué idioma te gustaría aprender?',
                        style: TextStyle(
                          fontSize: 35.0,
                          fontFamily: 'Avenir',
                          color: Color(0xFFe9ecef),
                          fontWeight: FontWeight.w500,
                          ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height:100),
                  ],
                ),
                FadeInDown(
                  duration: Duration(milliseconds: 700),
                  delay: Duration(milliseconds: 1500),
                  child: Container(
                    height: 500,
                    child: Swiper(
                      itemCount: colorPagina.length,
                      layout: SwiperLayout.DEFAULT,
                      pagination: SwiperPagination(
                        builder: FractionPaginationBuilder(
                        color: Color(0xFFe9ecef),
                        activeColor: Color(0xFFe9ecef),
                        activeFontSize: 40,
                        fontSize: 20,
                        ),
                      ),
                      itemBuilder: (context , index) {
                        return InkWell(
                          onTap: () {
                            HapticFeedback.mediumImpact();
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => CategoryPage(
                                  categoriasPagina: colorPagina[index].categorias,
                                  i: colorPagina[index].idiomaid - 1,
                                  colorPrincipal: colorPagina[index].colorPrincipal,
                                  colorTextoPrincipal: colorPagina[index].colorTextoPrincipal,
                                  colorSecundario: colorPagina[index].colorTextoSecundario,
                                ),
                              ),
                            );
                          },
                          child: Stack(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  SizedBox(height:100),
                                  Card(
                                    elevation: 15,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                    color: Color(colorPagina[index].colorPrincipal),
                                    child: Padding(
                                      padding: const EdgeInsets.all(50.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(height:30),
                                          Text(
                                            colorPagina[index].idioma,
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 40,
                                              color: Color(colorPagina[index].colorTextoPrincipal),
                                              fontWeight: FontWeight.w700,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: <Widget>[
                                              Text(
                                                'Elegir',
                                                style: TextStyle(
                                                  fontFamily: 'Avenir',
                                                  fontSize: 20,
                                                  color: Color(colorPagina[index].colorTextoSecundario),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down_circle,
                                                color: Color(colorPagina[index].colorTextoSecundario),
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
                                    Hero(
                                      transitionOnUserGestures: true,
                                      tag: colorPagina[index].idiomaid.toString() + "_IdiomaID",
                                      child: Image.asset(
                                        colorPagina[index].imageIdioma
                                      ),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }, //itemBuilder
                    ),
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