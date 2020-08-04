import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/services.dart';
import 'dart:math';

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
          IconButton(
            icon: Icon(Icons.search),
            color: Color(widget.colorTextoPrincipal),
            onPressed: (){
              HapticFeedback.mediumImpact();
              showSearch(context: context,delegate: DataSearch(
                lista: widget.categoriasPagina,
                colorFondoSearch: widget.colorPrincipal,
                colorTextoSearch: widget.colorTextoPrincipal,
                colorTarjetaFondo: widget.colorFondoTarjeta,
                idiomaID: widget.i,
                ),
              );
            },
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

class DataSearch extends SearchDelegate<String>{
  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme.copyWith(
      primaryColor: Color(colorFondoSearch),
      primaryIconTheme: theme.primaryIconTheme.copyWith(color: Color(colorTextoSearch)),
      primaryColorBrightness: Brightness.dark,
      primaryTextTheme: theme.primaryTextTheme,
    );
  }
  @override
  String get searchFieldLabel => 'Buscar';
  TextStyle get searchFieldStyle => TextStyle(
    //color: Color(colorTextoSearch),
    fontFamily: 'Avenir',
    //fontWeight: FontWeight.w300,
    fontSize: 20,);

  final List<Categorias> lista;
  final int colorFondoSearch;
  final int colorTextoSearch;
  final int colorTarjetaFondo;
  final int idiomaID;
  DataSearch({this.lista,this.colorFondoSearch,this.colorTextoSearch,this.colorTarjetaFondo,this.idiomaID});
  @override
  List<Widget> buildActions(BuildContext context) {
      return [ query.isEmpty ?
        IconButton(icon: Icon(null),
        onPressed: null,
        )
        : IconButton(icon: Icon(Icons.cancel),
        onPressed: (){
          HapticFeedback.mediumImpact();
          query = '';
        },
        )
      ];
    }
  
    @override
    Widget buildLeading(BuildContext context) {
      return IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: (){
          HapticFeedback.mediumImpact();
          close(context, null);
        }
      );
    }
  
    @override
    Widget buildResults(BuildContext context) {
    final suggestionList = lista.where((p) => p.categoria.toUpperCase().startsWith(query.toUpperCase())).toList();
    return Scaffold(
      backgroundColor: Color(colorFondoSearch),
      resizeToAvoidBottomInset: false,
      body: ListView.builder(itemBuilder: (context,index) => FadeInRight(
        child: ListTile(
          onTap: (){
            HapticFeedback.mediumImpact();
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => HomePage(
                  categoria: suggestionList[index].categoria,
                  categoriaID: suggestionList[index].categoriaID - 1,
                  idiomaID: idiomaID,
                ),
              ),
            );
          },
          leading: Image.asset(
            suggestionList[index].imagenCategoria,
            scale: 5,
          ),
          trailing: Icon(Icons.keyboard_arrow_right, color: Color(colorTextoSearch),),
          title: Text(
            suggestionList[index].categoria,
            style: TextStyle(
              color: Color(colorTextoSearch),
              fontWeight: FontWeight.w300,
              fontFamily: 'Avenir',
              fontSize: 20,
            ),
          ),
          subtitle: Text(
            'Categoria #'+suggestionList[index].categoriaID.toString(),
            style: TextStyle(
              color: Color(colorTextoSearch),
              fontWeight: FontWeight.w300,
              fontFamily: 'Avenir',
              fontSize: 15,
            ),
          ),
        ),
      ),
      itemCount: suggestionList.length,
      ),
    );
    }
  
    @override
    Widget buildSuggestions(BuildContext context) {
    final List<Categorias> suggestList = [];
    for (var i = 0; i < 0; i++) {//Modificar si se quiere lista de sugerencias
      var rng = new Random();
        suggestList.add(lista[rng.nextInt(lista.length)]);
    }
    final suggestionList = query.isEmpty 
    ? suggestList 
    : lista.where((element) => element.categoria.toUpperCase().startsWith(query.toUpperCase())).toList();
    return Scaffold(
      backgroundColor: Color(colorFondoSearch),
      resizeToAvoidBottomInset: false,
        body: ListView.builder(itemBuilder: (context,index) => FadeInRight(
                  child: ListTile(
            onTap: (){
              HapticFeedback.mediumImpact();
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => HomePage(
                  categoria: suggestionList[index].categoria,
                  categoriaID: suggestionList[index].categoriaID - 1,
                  idiomaID: idiomaID,
                ),
                ),
              );
            },
            leading: Image.asset(
                suggestionList[index].imagenCategoria,
                scale: 5,
              ),
            trailing: Icon(Icons.keyboard_arrow_right, color: Color(colorTextoSearch),),
            title: Text(
              suggestionList[index].categoria,
              style: TextStyle(
                color: Color(colorTextoSearch),
                fontWeight: FontWeight.w300,
                fontFamily: 'Avenir',
                fontSize: 20,
              ),
            )
      ),
        ),
      itemCount: suggestionList.length,
      ),
    );
  }
}
