import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'detail_page.dart';
import 'constants.dart';
import 'data.dart';

class GermanPage extends StatefulWidget {
  GermanPage({Key key}) : super(key: key);

  @override
  _GermanPageState createState() => _GermanPageState();
}

class _GermanPageState extends State<GermanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Inglés'),
        backgroundColor: colorPrincipal,
        foregroundColor: colorTextoPrincipal,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
        
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      backgroundColor: colorPrincipalGe,
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
                          color: colorTextoPrincipalGe,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "Inglés",
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 20,
                          color: colorTextoSecundarioGe,
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: Swiper(
                    itemCount: verbosGe.length,
                    layout: SwiperLayout.DEFAULT,
                    pagination: SwiperPagination(
                      builder: FractionPaginationBuilder(
                      color: Color(0xAA50514f),
                      activeColor: colorTextoPrincipalGe,
                      activeFontSize: 50,
                      fontSize: 20,
                      ),
                    ),
                    itemBuilder: (context , index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, a, b) => DetailPage(
                                verbInfo: verbosGe[index],
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
                                  color: colorTarjetaFondoGe,
                                  child: Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(height:30),
                                        Text(
                                          verbosGe[index].es,
                                          style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 35,
                                            color: colorTextoTarjetaGe,
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
                                                color: colorTextoTarjetaSecundarioGe,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward,
                                              color: colorTextoTarjetaSecundarioGe,
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
                                  tag: verbosGe[index].verbID,
                                  child: Image.asset(
                                    verbosGe[index].image,
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