import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'detail_page.dart';
import 'data.dart';

class HomePage extends StatefulWidget {
  final List<ColorPagina> colorPagina;
  final int i;
  const HomePage({Key key, this.colorPagina, this.i}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(colorPagina[widget.i].colorPrincipal),
      appBar: AppBar(
        backgroundColor: Color(colorPagina[widget.i].colorPrincipal),
        elevation: 0,
        actions: <Widget>[

        ],
        ),
        floatingActionButton: SpeedDial(
          backgroundColor: Color(colorPagina[widget.i].colorTarjetaFondo),
          marginRight: 20,
          marginBottom: 30,
          animatedIcon: AnimatedIcons.menu_close,
          animatedIconTheme: IconThemeData(color: Color(colorPagina[widget.i].colorTextoTarjeta)),
          elevation: 30,
          overlayColor: Colors.black,
          curve: Curves.decelerate,
          overlayOpacity: 0.5,
          shape: CircleBorder(),
          children: [
            SpeedDialChild(
              child: Icon(
                Icons.directions_car,
                color: Color(colorPagina[widget.i].colorTextoTarjeta),
                ),
              backgroundColor: Color(colorPagina[widget.i].colorTarjetaFondo),
              label: 'Sustantivos',
              labelBackgroundColor: Color(colorPagina[widget.i].colorTarjetaFondo),
              labelStyle: TextStyle(
                fontSize: 18.0, 
                color: Color(colorPagina[widget.i].colorTextoTarjeta),
              ),
            ),
            SpeedDialChild(
              child: Icon(
                Icons.insert_emoticon,
                color: Color(colorPagina[widget.i].colorTextoTarjeta),
                ),
              backgroundColor: Color(colorPagina[widget.i].colorTarjetaFondo),
              label: 'Adjetivos',
              labelBackgroundColor: Color(colorPagina[widget.i].colorTarjetaFondo),
              labelStyle: TextStyle(
                fontSize: 18.0, 
                color: Color(colorPagina[widget.i].colorTextoTarjeta),
              ),
            ),
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
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Verbos",
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 35,
                          color: Color(colorPagina[widget.i].colorTextoPrincipal),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        colorPagina[widget.i].idioma,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 20,
                          color: Color(colorPagina[widget.i].colorTextoSecundario),
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: Swiper(
                    itemCount: colorPagina[widget.i].verbosList.length,
                    layout: SwiperLayout.DEFAULT,
                    pagination: SwiperPagination(
                      builder: FractionPaginationBuilder(
                      color: Color(colorPagina[widget.i].colorElementosFaltantes),
                      activeColor: Color(colorPagina[widget.i].colorElementoActual),
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
                              builder: (context) => DetailPage(
                                verbInfo: colorPagina[widget.i].verbosList[index],
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
                                  color: Color(colorPagina[widget.i].colorTarjetaFondo),
                                  child: Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(height:30),
                                        Text(
                                          colorPagina[widget.i].verbosList[index].es,
                                          style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 40,
                                            color: Color(colorPagina[widget.i].colorTextoTarjeta),
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
                                                color: Color(colorPagina[widget.i].colorTextoTarjetaSecundario),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              color: Color(colorPagina[widget.i].colorTextoTarjetaSecundario),
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
                                  tag: colorPagina[widget.i].verbosList[index].verbID,
                                  child: Image.asset(
                                    colorPagina[widget.i].verbosList[index].image,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}