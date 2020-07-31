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
    colorPagina[widget.idiomaID].categorias[widget.categoriaID].list.sort((a, b) => a.es.compareTo(b.es));
    return Scaffold(
      backgroundColor: Color(colorPagina[widget.idiomaID].colorPrincipal),
      appBar: AppBar(
        backgroundColor: Color(colorPagina[widget.idiomaID].colorPrincipal),
        elevation: 0,
        title: Text(
          widget.categoria,
          style: TextStyle(
            fontFamily: 'Avenir',
            fontSize: 20,
            color: Color(colorPagina[widget.idiomaID].colorTextoPrincipal),
            fontWeight: FontWeight.w300,
            ),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color(colorPagina[widget.idiomaID].colorTextoPrincipal),
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
              colorPagina[widget.idiomaID].categorias[widget.categoriaID].imagenCategoria,
              scale: 5,
            ),
          ),
        ],
      ),
      body: ElasticInRight(
        duration: Duration(milliseconds: 1000),
        child: Container(
          alignment: Alignment.center,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
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
                                  colorFondo: colorPagina[widget.idiomaID].colorTarjetaFondo,
                                ),
                              ),
                            );
                          },
                          child: Stack(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  SizedBox(height:130),
                                  Card(
                                    elevation: 15,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                    color: Color(colorPagina[widget.idiomaID].colorTarjetaFondo),
                                    child: Padding(
                                      padding: const EdgeInsets.all(50.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(height:30),
                                          Text(
                                            colorPagina[widget.idiomaID].categorias[widget.categoriaID].list[index].es,
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 40,
                                              color: Color(colorPagina[widget.idiomaID].colorTextoTarjeta),
                                              fontWeight: FontWeight.w400,
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
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down_circle,
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