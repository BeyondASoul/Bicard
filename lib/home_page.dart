import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'detail_page.dart';
import 'constants.dart';
import 'data.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFCC444B),
      body: Container(
        alignment: Alignment.topCenter,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
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
                          color: colorTextoPrincipal,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "Inglés",
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 20,
                          color: colorTextoSecundario,
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: Swiper(
                    itemCount: verbos.length,
                    layout: SwiperLayout.DEFAULT,
                    pagination: SwiperPagination(
                      builder: DotSwiperPaginationBuilder(
                      color: Color(0xFFdf7373),
                      activeColor: Colors.white,
                      space: 0
                      ),
                    ),
                    itemBuilder: (context , index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, a, b) => DetailPage(
                                verbInfo: verbos[index],
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
                                  color: colorTarjetaFondo,
                                  child: Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(height:30),
                                        Text(
                                          verbos[index].es,
                                          style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 40,
                                            color: colorTextoTarjeta,
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
                                                fontSize: 18,
                                                color: colorTextoTarjetaSecundario,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              color: colorTextoTarjetaSecundario,
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
                                  tag: verbos[index].verbID,
                                  child: Image.asset(
                                    verbos[index].image,
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