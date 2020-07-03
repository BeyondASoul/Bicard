import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
      backgroundColor: colorPrincipal,
      body: Container(
        alignment: Alignment.topCenter,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    ),
                    Text(
                      "Inglés",
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 20,
                        color: colorTextoSecundario,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 300,
                child: Swiper(
                  itemCount: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}