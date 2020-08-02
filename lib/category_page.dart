import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/services.dart';

import 'home_page.dart';
import 'data.dart';


class CategoryPage extends StatefulWidget {
  final List<Categorias> categoriasPagina;
  final int i;
  final int colorPrincipal;
  final int colorTextoPrincipal;
  final int colorSecundario;
  final int colorFondoTarjeta;
  final int colorTextoTarjeta;
  final int colorTextoTarjetaSec;
  const CategoryPage({Key key, this.categoriasPagina, this.i, 
  this.colorPrincipal, this.colorTextoPrincipal ,this.colorSecundario,
  this.colorFondoTarjeta, this.colorTextoTarjeta, this.colorTextoTarjetaSec,
  }) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(widget.colorPrincipal),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(widget.colorPrincipal),
        elevation: 0,
        title: Text(
          'Categoría',
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Avenir',
            color: Color(widget.colorTextoPrincipal),
            fontWeight: FontWeight.w300,
            ),
            ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color(widget.colorTextoPrincipal),
          onPressed: () {
            HapticFeedback.mediumImpact();
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          Image.asset(
            colorPagina[widget.i].imageIdioma,
            scale: 5,
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 500,
                    child: Swiper(
                      itemCount: widget.categoriasPagina.length,
                      layout: SwiperLayout.DEFAULT,
                      pagination: SwiperPagination(
                        builder: FractionPaginationBuilder(
                        color: Color(widget.colorSecundario),
                        activeColor: Color(widget.colorTextoPrincipal),
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
                                builder: (context) => HomePage(
                                  categoria: widget.categoriasPagina[index].categoria,
                                  categoriaID: widget.categoriasPagina[index].categoriaID - 1,
                                  idiomaID: widget.i,
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
                                    color: Color(widget.colorFondoTarjeta),
                                    child: Padding(
                                      padding: const EdgeInsets.all(50.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(height:30),
                                          Text(
                                            widget.categoriasPagina[index].categoria,
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 40,
                                              color: Color(widget.colorTextoTarjeta),
                                              fontWeight: FontWeight.w400,
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
                                                  color: Color(widget.colorTextoTarjetaSec),
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down_circle,
                                                color: Color(widget.colorTextoTarjetaSec),
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
                                      widget.categoriasPagina[index].imagenCategoria,
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