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
          fullTransitionValue: 800,
          enableLoop: true,
          enableSlideIcon: true,
          slideIconWidget: Icon(Icons.arrow_left,color: Color(colorPagina[page].colorTextoPrincipal),),
          positionSlideIcon: 0.3,
          waveType: WaveType.liquidReveal,
          onPageChangeCallback: (page) => pageChangeCallback(page),
          currentUpdateTypeCallback: ( updateType ) => updateTypeCallback( updateType ),
        ),
      ),
      floatingActionButton: ElasticInLeft(
              child: FloatingActionButton.extended(
          heroTag: pageChangeCallback(page),
          backgroundColor: Color(colorPagina[page].colorTextoPrincipal),
          foregroundColor: Color(colorPagina[page].colorPrincipal),
          elevation: 15,
          icon: Icon(Icons.arrow_drop_down_circle),
          label: Text("Elegir"),
          onPressed: (){
            HapticFeedback.mediumImpact();
            Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => CategoryPage(
                categoriasPagina: colorPagina[page].categorias,
                i: colorPagina[page].idiomaid - 1,
                colorPrincipal: colorPagina[page].colorPrincipal,
                colorTextoPrincipal: colorPagina[page].colorTextoPrincipal,
                colorSecundario: colorPagina[page].colorTextoSecundario,
                colorTextoTarjeta: colorPagina[page].colorTextoTarjeta,
                colorTextoTarjetaSec: colorPagina[page].colorTextoTarjetaSecundario,
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
    print( lpage );
    setState(() {
      page = lpage;
    });
  }

  updateTypeCallback( UpdateType updateType) {
    print( updateType );
  }
}