import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:animate_do/animate_do.dart';

import 'pages_data.dart';
import 'category_page.dart';
import 'data.dart';

class LiquidHome extends StatefulWidget {
  const LiquidHome({Key key}) : super(key: key);

  @override
  _LiquidHomeState createState() => _LiquidHomeState();
}

class _LiquidHomeState extends State<LiquidHome> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCC444B),
      body: ElasticInRight(
        child: LiquidSwipe(
          pages: liquidPages,
          enableLoop: true,
          slideIconWidget: Icon(
            Icons.arrow_right,
            color: Color(colorPagina[page].colorTextoPrincipal),
            size: 50,
          ),
          positionSlideIcon: 0.5,
          waveType: WaveType.liquidReveal,
          onPageChangeCallback: (page) => pageChangeCallback(page),
          currentUpdateTypeCallback: (updateType) =>
              updateTypeCallback(updateType),
        ),
      ),
      floatingActionButton: ElasticInLeft(
        child: FloatingActionButton.extended(
          heroTag: pageChangeCallback(page),
          backgroundColor: Color(colorPagina[page].colorTextoPrincipal),
          foregroundColor: Color(colorPagina[page].colorPrincipal),
          elevation: 15,
          label: Text(
            "Seleccionar",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontFamily: 'Avenir',
              fontSize: 20,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          onPressed: () {
            HapticFeedback.mediumImpact();
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => CategoryPage(
                  categoriasPagina: colorPagina[page].categorias,
                  i: colorPagina[page].idiomaid - 1,
                  languageTTS: colorPagina[page].languagetts,
                  colorPrincipal: colorPagina[page].colorPrincipal,
                  colorTextoPrincipal: colorPagina[page].colorTextoPrincipal,
                  colorSecundario: colorPagina[page].colorTextoSecundario,
                  colorTextoTarjeta: colorPagina[page].colorTextoTarjeta,
                  colorTextoTarjetaSec:
                      colorPagina[page].colorTextoTarjetaSecundario,
                  colorFondoTarjeta: colorPagina[page].colorTarjetaFondo,
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  pageChangeCallback(int lpage) {
    print(lpage);
    setState(() {
      page = lpage;
    });
  }

  updateTypeCallback(UpdateType updateType) {
    print(updateType);
  }
}
