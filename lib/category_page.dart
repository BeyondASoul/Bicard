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
  const CategoryPage({Key key, this.categoriasPagina, this.i}) : super(key: key);

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
                                  SizedBox(height:200),
                                  Card(
                                    elevation: 30,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100)
                                    ),
                                    color: Color(0xFFe9ecef),
                                    child: Padding(
                                      padding: const EdgeInsets.all(30.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          SizedBox(height:30),
                                          Text(
                                            widget.categoriasPagina[index].categoria,
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 40,
                                              color: Color(0xFF242423),
                                              fontWeight: FontWeight.w700,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: <Widget>[
                                              Icon(
                                                Icons.arrow_forward,
                                                color: Color(0xFF242423),
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