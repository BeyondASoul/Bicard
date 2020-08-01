import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

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
    var list2 = colorPagina[widget.idiomaID].categorias[widget.categoriaID];
    //list2.list.sort((a, b) => a.es.compareTo(b.es));
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
          IconButton(
            icon: Icon(Icons.search),
            color: Color(colorPagina[widget.idiomaID].colorTextoPrincipal),
            onPressed: (){
              HapticFeedback.mediumImpact();
              showSearch(context: context,delegate: DataSearch(
                lista: list2.list,
                colorFondoSearch: colorPagina[widget.idiomaID].colorPrincipal,
                colorTextoSearch: colorPagina[widget.idiomaID].colorTextoPrincipal,
                colorTarjetaFondo: colorPagina[widget.idiomaID].colorTarjetaFondo,
                )
                ,);
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 500,
                    child: Swiper(
                      itemCount: list2.list.length,
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
                                  info: list2.list[index],
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
                                            list2.list[index].es,
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
                                    tag: list2.list[index].id,
                                    child: Image.asset(
                                      list2.list[index].image
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
    color: Color(colorTextoSearch),
    fontFamily: 'Avenir',
    fontWeight: FontWeight.w300,
    fontSize: 20,);

  final List<Info> lista;
  final int colorFondoSearch;
  final int colorTextoSearch;
  final int colorTarjetaFondo;
  DataSearch({this.lista,this.colorFondoSearch,this.colorTextoSearch,this.colorTarjetaFondo});
  @override
  List<Widget> buildActions(BuildContext context) {
      return [
        IconButton(icon: Icon(Icons.clear),
        onPressed: (){
          HapticFeedback.mediumImpact();
          query = '';
        },
        ),
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
    final suggestionList = lista.where((p) => p.es.toUpperCase().startsWith(query.toUpperCase())).toList();
    return Scaffold(
      backgroundColor: Color(colorFondoSearch),
      body: ListView.builder(itemBuilder: (context,index) => ListTile(
        onTap: (){
          HapticFeedback.mediumImpact();
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => DetailPage(
                info: query.isEmpty ? suggestionList[index] : suggestionList[lista[index].id -1 ],
                colorFondo: colorTarjetaFondo,
              ),
            ),
          );
        },
        leading: Image.asset(
          suggestionList[index].image,
          scale: 5,
        ),
        trailing: Icon(Icons.keyboard_arrow_right, color: Color(colorTextoSearch),),
        title: RichText(text: TextSpan(
          text: suggestionList[index].es.substring(0,query.length),
          style: TextStyle(
            color: Color(colorTextoSearch),
            fontWeight: FontWeight.w700, 
            fontFamily: 'Avenir',
            fontSize: 20,),
          children: [
            TextSpan(
              text: suggestionList[index].es.substring(query.length),
              style: TextStyle(
                color: Color(colorTextoSearch),
                fontWeight: FontWeight.w300,
                fontFamily: 'Avenir',
                fontSize: 20,),
            ),
          ],
        ),
        ),
      ),
      itemCount: suggestionList.length,
      itemExtent: 50,
      ),
    );
    }
  
    @override
    Widget buildSuggestions(BuildContext context) {
    final List<Info> suggestList = [];
    for (var i = 0; i < 5; i++) {
      var rng = new Random();
        suggestList.add(lista[rng.nextInt(lista.length)]);
    }
    final suggestionList = query.isEmpty 
    ? suggestList 
    :lista.where((element) => element.es.toUpperCase().startsWith(query.toUpperCase())).toList();
    return Scaffold(
      backgroundColor: Color(colorFondoSearch),
        body: ElasticInRight(
        child: ListView.builder(itemBuilder: (context,index) => ListTile(
          onTap: (){
            HapticFeedback.mediumImpact();
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => DetailPage(
                  info: query.isEmpty ? suggestionList[index] : suggestionList[lista[index].id -1 ],
                  colorFondo: colorTarjetaFondo,
                ),
              ),
            );
          },
          leading: Image.asset(
              suggestionList[index].image,
              scale: 5,
            ),
          trailing: Icon(Icons.keyboard_arrow_right, color: Color(colorTextoSearch),),
          title: RichText(text: TextSpan(
            text: suggestionList[index].es.substring(0,query.length),
            style: TextStyle(
              color: Color(colorTextoSearch),
              fontWeight: FontWeight.w700, 
              fontFamily: 'Avenir',
              fontSize: 20,),
            children: [
              TextSpan(
                text: suggestionList[index].es.substring(query.length),
                style: TextStyle(
                  color: Color(colorTextoSearch),
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Avenir',
                  fontSize: 20,),
              ),
            ],
          ),
          ),
      ),
      itemCount: suggestionList.length,
      itemExtent: 50,
      ),
        ),
    );
  }
}
