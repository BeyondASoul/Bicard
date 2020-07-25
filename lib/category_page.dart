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
  const CategoryPage({Key key, this.categoriasPagina, this.i, this.colorPrincipal, this.colorTextoPrincipal ,this.colorSecundario}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF242423),
      appBar: AppBar(
        backgroundColor: Color(0xFF242423),
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
            tag: colorPagina[widget.i].idiomaid.toString() + "_IdiomaID",
            child: Image.asset(
              colorPagina[widget.i].imageIdioma
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        'Elige una categoría',
                        style: TextStyle(
                          fontSize: 35.0,
                          fontFamily: 'Avenir',
                          color: Color(0xFFe9ecef),
                          fontWeight: FontWeight.w500,
                          ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height:100),
                    ],
                  ),
                  Container(
                    height: 500,
                    child: Swiper(
                      itemCount: widget.categoriasPagina.length,
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
                                  SizedBox(height:100),
                                  Card(
                                    elevation: 15,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)
                                    ),
                                    color: Color(widget.colorPrincipal),
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
                                              color: Color(widget.colorTextoPrincipal),
                                              fontWeight: FontWeight.w700,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Text(
                                                'Elegir',
                                                style: TextStyle(
                                                  fontFamily: 'Avenir',
                                                  fontSize: 20,
                                                  color: Color(widget.colorSecundario),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down_circle,
                                                color: Color(widget.colorSecundario),
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
                                      tag: widget.categoriasPagina[index].categoria.toString() + '_CategoriaID',
                                      child: Image.asset(
                                        widget.categoriasPagina[index].imagenCategoria,
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