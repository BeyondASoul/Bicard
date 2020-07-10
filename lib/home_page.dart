import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/services.dart';

import 'data.dart';
import 'detail_page.dart';

class HomePage extends StatefulWidget {
  final String categoria;
  final int categoriaID;
  final int idiomaID;
  const HomePage({Key key, this.categoria,this.categoriaID,this.idiomaID}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(colorPagina[widget.idiomaID].colorPrincipal),
      appBar: AppBar(
        backgroundColor: Color(colorPagina[widget.idiomaID].colorPrincipal),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            HapticFeedback.mediumImpact();
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          Hero(
            transitionOnUserGestures: true,
            tag: colorPagina[widget.idiomaID].categorias[widget.categoriaID].categoria.toString() + "_CategoriaID",
            child: Image.asset(
              colorPagina[widget.idiomaID].categorias[widget.categoriaID].imagenCategoria
            ),
          ),
        ],
      ),
      body: FadeInRight(
        duration: Duration(milliseconds: 700),
        child: Container(
          alignment: Alignment.center,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          widget.categoria,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 35,
                            color: Color(colorPagina[widget.idiomaID].colorTextoPrincipal),
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Hero(
                          transitionOnUserGestures: true,
                          tag: colorPagina[widget.idiomaID].idiomaid.toString() + "_IdiomaID",
                          child: Image.asset(
                            colorPagina[widget.idiomaID].imageIdioma, 
                            scale: 5,
                            ),
                        ),
                        Text(
                          colorPagina[widget.idiomaID].idioma,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 20,
                            color: Color(colorPagina[widget.idiomaID].colorTextoSecundario),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    child: Swiper(
                      itemCount: colorPagina[widget.idiomaID].categorias[widget.categoriaID].list.length,
                      layout: SwiperLayout.DEFAULT,
                      pagination: SwiperPagination(
                        builder: FractionPaginationBuilder(
                        color: Color(colorPagina[widget.idiomaID].colorElementosFaltantes),
                        activeColor: Color(colorPagina[widget.idiomaID].colorElementoActual),
                        activeFontSize: 50,
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
                                builder: (context) => DetailPage(
                                  info: colorPagina[widget.idiomaID].categorias[widget.categoriaID].list[index],
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
                                    color: Color(colorPagina[widget.idiomaID].colorTarjetaFondo),
                                    child: Padding(
                                      padding: const EdgeInsets.all(30.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(height:30),
                                          Text(
                                            colorPagina[widget.idiomaID].categorias[widget.categoriaID].list[index].es,
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 40,
                                              color: Color(colorPagina[widget.idiomaID].colorTextoTarjeta),
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
                                                  color: Color(colorPagina[widget.idiomaID].colorTextoTarjetaSecundario),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_forward,
                                                color: Color(colorPagina[widget.idiomaID].colorTextoTarjetaSecundario),
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
                                    tag: colorPagina[widget.idiomaID].categorias[widget.categoriaID].list[index].id,
                                    child: Image.asset(
                                      colorPagina[widget.idiomaID].categorias[widget.categoriaID].list[index].image
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
      ),
    );
  }
}