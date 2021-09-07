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
  final String languageTTS;
  const HomePage({
    Key key,
    this.categoria,
    this.categoriaID,
    this.idiomaID,
    this.languageTTS,
  }) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ColorPagina id = colorPagina[widget.idiomaID];
    Categorias list2 =
        colorPagina[widget.idiomaID].categorias[widget.categoriaID];
    //list2.list.sort((a, b) => a.es.compareTo(b.es));
    return Scaffold(
      backgroundColor: Color(id.colorPrincipal),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color(id.colorPrincipal),
        elevation: 0,
        title: Text(
          widget.categoria,
          style: TextStyle(
            fontFamily: 'Avenir',
            fontSize: 30,
            color: Color(id.colorTextoPrincipal),
            fontWeight: FontWeight.w300,
          ),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color(id.colorTextoPrincipal),
          onPressed: () {
            HapticFeedback.mediumImpact();
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Color(id.colorTextoPrincipal),
            onPressed: () {
              HapticFeedback.mediumImpact();
              showSearch(
                context: context,
                delegate: DataSearch(
                  lista: list2.list,
                  colorFondoSearch: id.colorPrincipal,
                  colorTextoSearch: id.colorTextoPrincipal,
                  colorTarjetaFondo: id.colorTarjetaFondo,
                  languagettssearch: widget.languageTTS,
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
                          color: Color(id.colorElementosFaltantes),
                          activeColor: Color(id.colorElementoActual),
                          activeFontSize: 50,
                          fontSize: 20,
                        ),
                      ),
                      itemBuilder: (context, index) {
                        return itemCategory(context, list2, index, id);
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

  InkWell itemCategory(
      BuildContext context, Categorias list2, int index, ColorPagina id) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        HapticFeedback.mediumImpact();
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => DetailPage(
              info: list2.list[index],
              colorFondo: id.colorTarjetaFondo,
              languageTTS: widget.languageTTS,
            ),
          ),
        );
      },
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 130),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Card(
                  elevation: 15,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  color: Color(id.colorTarjetaFondo),
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 30),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            list2.list[index].es,
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 40,
                              color: Color(id.colorTextoTarjeta),
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'Ver más',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 20,
                                color: Color(colorPagina[widget.idiomaID]
                                    .colorTextoTarjetaSecundario),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Icon(
                              Icons.more_horiz,
                              color: Color(colorPagina[widget.idiomaID]
                                  .colorTextoTarjetaSecundario),
                            ),
                          ],
                        ),
                      ],
                    ),
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
                child: Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(list2.list[index].image),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme.copyWith(
      primaryColor: Color(colorFondoSearch),
      primaryIconTheme:
          theme.primaryIconTheme.copyWith(color: Color(colorTextoSearch)),
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
        fontSize: 20,
      );

  final List<Info> lista;
  final int colorFondoSearch;
  final int colorTextoSearch;
  final int colorTarjetaFondo;
  final String languagettssearch;
  DataSearch({
    this.lista,
    this.colorFondoSearch,
    this.colorTextoSearch,
    this.colorTarjetaFondo,
    this.languagettssearch,
  });
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      query.isEmpty
          ? IconButton(
              icon: Icon(null),
              onPressed: null,
            )
          : IconButton(
              icon: Icon(Icons.cancel),
              onPressed: () {
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
        onPressed: () {
          HapticFeedback.mediumImpact();
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    final suggestionList = lista
        .where((p) => p.es.toUpperCase().startsWith(query.toUpperCase()))
        .toList();
    return Scaffold(
      backgroundColor: Color(colorFondoSearch),
      resizeToAvoidBottomInset: false,
      body: ListView.builder(
        itemBuilder: (context, index) => FadeInRight(
          child: ListTile(
            onTap: () {
              HapticFeedback.mediumImpact();
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => DetailPage(
                    info: query.isEmpty
                        ? suggestionList[index]
                        : suggestionList[lista[index].id - 1],
                    colorFondo: colorTarjetaFondo,
                    languageTTS: languagettssearch,
                  ),
                ),
              );
            },
            leading: Image.asset(
              suggestionList[index].image,
              scale: 5,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Color(colorTextoSearch),
            ),
            title: Text(
              suggestionList[index].es,
              style: TextStyle(
                color: Color(colorTextoSearch),
                fontWeight: FontWeight.w300,
                fontFamily: 'Avenir',
                fontSize: 20,
              ),
            ),
            subtitle: Text(
              suggestionList[index].presente,
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
    final List<Info> suggestList = lista;
    // for (var i = 0; i < 0; i++) {
    //   //Modificar si se quiere lista de sugerencias
    //   var rng = new Random();
    //   suggestList.add(lista[rng.nextInt(lista.length)]);
    // }
    final suggestionList = query.isEmpty
        ? suggestList
        : lista
            .where((element) =>
                element.es.toUpperCase().startsWith(query.toUpperCase()))
            .toList();
    return Scaffold(
      backgroundColor: Color(colorFondoSearch),
      resizeToAvoidBottomInset: false,
      body: ListView.builder(
        itemBuilder: (context, index) => FadeInRight(
          child: ListTile(
              onTap: () {
                HapticFeedback.mediumImpact();
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => DetailPage(
                      info: query.isEmpty
                          ? suggestionList[index]
                          : suggestionList[lista[index].id - 1],
                      colorFondo: colorTarjetaFondo,
                      languageTTS: languagettssearch,
                    ),
                  ),
                );
              },
              leading: Image.asset(
                suggestionList[index].image,
                scale: 5,
              ),
              trailing: Icon(
                Icons.keyboard_arrow_right,
                color: Color(colorTextoSearch),
              ),
              title: Text(
                suggestionList[index].es,
                style: TextStyle(
                  color: Color(colorTextoSearch),
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Avenir',
                  fontSize: 20,
                ),
              )),
        ),
        itemCount: suggestionList.length,
      ),
    );
  }
}
