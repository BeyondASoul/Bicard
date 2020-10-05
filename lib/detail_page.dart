import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'data.dart';

class DetailPage extends StatelessWidget {
  final Info info;
  final int colorFondo;
  final String languageTTS;

  const DetailPage({
    Key key,
    this.info,
    this.colorFondo,
    this.languageTTS,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FlutterTts flutterTTS = FlutterTts();

    Future _speak(String text) async {
      await flutterTTS.isLanguageAvailable(languageTTS);
      await flutterTTS.setSpeechRate(.4);
      await flutterTTS.setLanguage(languageTTS);
      await flutterTTS.speak(text);
    }

    return Scaffold(
      backgroundColor: Color(colorFondo),
      appBar: AppBar(
        backgroundColor: Color(colorFondo),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xFF000000),
          onPressed: () {
            HapticFeedback.mediumImpact();
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: SafeArea(
          top: true,
          right: true,
          left: true,
          bottom: false,
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Hero(
                        transitionOnUserGestures: true,
                        tag: info.id,
                        child: Image.asset(info.image)),
                    Divider(color: Color(0xFF000000)),
                    SizedBox(height: 50),
                    info.es == null
                        ? Container()
                        : ElasticInRight(
                            child: Text(
                              info.es,
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 40,
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                    info.presente == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 100),
                            child: FlatButton(
                              onPressed: () => _speak(info.presente),
                              child: Text(
                                info.presente,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    info.pronunciacion1 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 200),
                            child: Text(
                              info.pronunciacion1,
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 35,
                                color: Color(0XAA6c757d),
                                fontWeight: FontWeight.w300,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                    info.pronunciacion1_1 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 200),
                            child: FlatButton(
                              onPressed: () => _speak(info.pronunciacion1_1),
                              child: Text(
                                info.pronunciacion1_1,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0XAA6c757d),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    info.pronunciacion1_2 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 200),
                            child: FlatButton(
                              onPressed: () => _speak(info.pronunciacion1_2),
                              child: Text(
                                info.pronunciacion1_2,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0XAA6c757d),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    info.pronunciacion1_3 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 200),
                            child: FlatButton(
                              onPressed: () => _speak(info.pronunciacion1_3),
                              child: Text(
                                info.pronunciacion1_3,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0XAA6c757d),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    info.pronunciacion1_4 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 200),
                            child: FlatButton(
                              onPressed: () => _speak(info.pronunciacion1_4),
                              child: Text(
                                info.pronunciacion1_4,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0XAA6c757d),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    info.pronunciacion1_5 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 200),
                            child: FlatButton(
                              onPressed: () => _speak(info.pronunciacion1_5),
                              child: Text(
                                info.pronunciacion1_5,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0XAA6c757d),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    info.pronunciacion1_6 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 200),
                            child: FlatButton(
                              onPressed: () => _speak(info.pronunciacion1_6),
                              child: Text(
                                info.pronunciacion1_6,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0XAA6c757d),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    info.pasado == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 300),
                            child: FlatButton(
                              onPressed: () => _speak(info.pasado),
                              child: Text(
                                info.pasado,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    info.pronunciacion2 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 400),
                            child: Text(
                              info.pronunciacion2,
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 35,
                                color: Color(0XAA6c757d),
                                fontWeight: FontWeight.w300,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                    info.pronunciacion2_1 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 400),
                            child: FlatButton(
                              onPressed: () => _speak(info.pronunciacion2_1),
                              child: Text(
                                info.pronunciacion2_1,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0XAA6c757d),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    info.pronunciacion2_2 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 400),
                            child: FlatButton(
                              onPressed: () => _speak(info.pronunciacion2_2),
                              child: Text(
                                info.pronunciacion2_2,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0XAA6c757d),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    info.pronunciacion2_3 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 400),
                            child: FlatButton(
                              onPressed: () => _speak(info.pronunciacion2_3),
                              child: Text(
                                info.pronunciacion2_3,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0XAA6c757d),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    info.pronunciacion2_4 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 400),
                            child: FlatButton(
                              onPressed: () => _speak(info.pronunciacion2_4),
                              child: Text(
                                info.pronunciacion2_4,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0XAA6c757d),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    info.pronunciacion2_5 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 400),
                            child: FlatButton(
                              onPressed: () => _speak(info.pronunciacion2_5),
                              child: Text(
                                info.pronunciacion2_5,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0XAA6c757d),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    info.pronunciacion2_6 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 400),
                            child: FlatButton(
                              onPressed: () => _speak(info.pronunciacion2_6),
                              child: Text(
                                info.pronunciacion2_6,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0XAA6c757d),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    info.participio == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 500),
                            child: FlatButton(
                              onPressed: () => _speak(info.participio),
                              child: Text(
                                info.participio,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    info.pronunciacion3 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 600),
                            child: Text(
                              info.pronunciacion3,
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 35,
                                color: Color(0XAA6c757d),
                                fontWeight: FontWeight.w300,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                    info.pronunciacion3_1 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 600),
                            child: FlatButton(
                              onPressed: () => _speak(info.pronunciacion3_1),
                              child: Text(
                                info.pronunciacion3_1,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0XAA6c757d),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    info.pronunciacion3_2 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 600),
                            child: FlatButton(
                              onPressed: () => _speak(info.pronunciacion3_2),
                              child: Text(
                                info.pronunciacion3_2,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0XAA6c757d),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    info.pronunciacion3_3 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 600),
                            child: FlatButton(
                              onPressed: () => _speak(info.pronunciacion3_3),
                              child: Text(
                                info.pronunciacion3_3,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0XAA6c757d),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    info.pronunciacion3_4 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 600),
                            child: FlatButton(
                              onPressed: () => _speak(info.pronunciacion3_4),
                              child: Text(
                                info.pronunciacion3_4,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0XAA6c757d),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    info.pronunciacion3_5 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 600),
                            child: FlatButton(
                              onPressed: () => _speak(info.pronunciacion3_5),
                              child: Text(
                                info.pronunciacion3_5,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0XAA6c757d),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    info.pronunciacion3_6 == null
                        ? Container()
                        : ElasticInRight(
                            delay: Duration(milliseconds: 600),
                            child: FlatButton(
                              onPressed: () => _speak(info.pronunciacion3_6),
                              child: Text(
                                info.pronunciacion3_6,
                                style: TextStyle(
                                  fontFamily: 'Avenir',
                                  fontSize: 35,
                                  color: Color(0XAA6c757d),
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                    SizedBox(height: 50),
                    Divider(color: Color(0xFF000000)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
