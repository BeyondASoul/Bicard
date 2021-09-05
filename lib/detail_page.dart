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
                    SizedBox(height: 50),
                    Hero(
                      transitionOnUserGestures: true,
                      tag: info.id,
                      child: Image.asset(info.image),
                    ),
                    SizedBox(height: 50),
                    info.es == null ? Container() : infoSpanishText(),
                    SizedBox(height: 50),
                    Divider(
                      color: Color(0xFF757575),
                      indent: 55,
                      endIndent: 55,
                    ),
                    SizedBox(height: 50),
                    info.pronunciacion1 == null
                        ? Container()
                        : infoSecondaryText(info.pronunciacion1),
                    info.presente == null
                        ? Container()
                        : infoPrincipalText(_speak, info.presente),
                    info.pronunciacion1_1 == null
                        ? Container()
                        : infoPronunciation(_speak, info.pronunciacion1_1),
                    info.pronunciacion1_2 == null
                        ? Container()
                        : infoPronunciation(_speak, info.pronunciacion1_2),
                    info.pronunciacion1_3 == null
                        ? Container()
                        : infoPronunciation(_speak, info.pronunciacion1_3),
                    info.pronunciacion1_4 == null
                        ? Container()
                        : infoPronunciation(_speak, info.pronunciacion1_4),
                    info.pronunciacion1_5 == null
                        ? Container()
                        : infoPronunciation(_speak, info.pronunciacion1_5),
                    info.pronunciacion1_6 == null
                        ? Container()
                        : infoPronunciation(_speak, info.pronunciacion1_6),
                    SizedBox(height: 50),
                    info.pronunciacion2 == null
                        ? Container()
                        : infoSecondaryText(info.pronunciacion2),
                    info.pasado == null
                        ? Container()
                        : infoPrincipalText(_speak, info.pasado),
                    info.pronunciacion2_1 == null
                        ? Container()
                        : infoPronunciation(_speak, info.pronunciacion2_1),
                    info.pronunciacion2_2 == null
                        ? Container()
                        : infoPronunciation(_speak, info.pronunciacion2_2),
                    info.pronunciacion2_3 == null
                        ? Container()
                        : infoPronunciation(_speak, info.pronunciacion2_3),
                    info.pronunciacion2_4 == null
                        ? Container()
                        : infoPronunciation(_speak, info.pronunciacion2_4),
                    info.pronunciacion2_5 == null
                        ? Container()
                        : infoPronunciation(_speak, info.pronunciacion2_5),
                    info.pronunciacion2_6 == null
                        ? Container()
                        : infoPronunciation(_speak, info.pronunciacion2_6),
                    SizedBox(height: 50),
                    info.pronunciacion3 == null
                        ? Container()
                        : infoSecondaryText(info.pronunciacion3),
                    info.participio == null
                        ? Container()
                        : infoPrincipalText(_speak, info.participio),
                    info.pronunciacion3_1 == null
                        ? Container()
                        : infoPronunciation(_speak, info.pronunciacion3_1),
                    info.pronunciacion3_2 == null
                        ? Container()
                        : infoPronunciation(_speak, info.pronunciacion3_2),
                    info.pronunciacion3_3 == null
                        ? Container()
                        : infoPronunciation(_speak, info.pronunciacion3_3),
                    info.pronunciacion3_4 == null
                        ? Container()
                        : infoPronunciation(_speak, info.pronunciacion3_4),
                    info.pronunciacion3_5 == null
                        ? Container()
                        : infoPronunciation(_speak, info.pronunciacion3_5),
                    info.pronunciacion3_6 == null
                        ? Container()
                        : infoPronunciation(_speak, info.pronunciacion3_6),
                    SizedBox(height: 50),
                    Divider(
                      color: Color(0xFF757575),
                      indent: 55,
                      endIndent: 55,
                    ),
                    SizedBox(height: 100),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ElasticInRight infoPronunciation(
      Future<dynamic> _speak(String text), String pronunciacion) {
    return ElasticInRight(
      delay: Duration(milliseconds: 200),
      child: TextButton(
        onPressed: () => _speak(pronunciacion),
        child: Text(
          pronunciacion,
          style: TextStyle(
            fontFamily: 'Avenir',
            fontSize: 35,
            color: Color(0XAA6c757d),
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  ElasticInRight infoSpanishText() {
    return ElasticInRight(
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
    );
  }

  ElasticInRight infoSecondaryText(String tiempo) {
    return ElasticInRight(
      delay: Duration(milliseconds: 200),
      child: Text(
        tiempo,
        style: TextStyle(
          fontFamily: 'Avenir',
          fontSize: 35,
          color: Color(0XAA6c757d),
          fontWeight: FontWeight.w300,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  ElasticInRight infoPrincipalText(
      Future<dynamic> _speak(String text), String infinitive) {
    return ElasticInRight(
      delay: Duration(milliseconds: 100),
      child: TextButton(
        onPressed: () => _speak(infinitive),
        child: Text(
          infinitive,
          style: TextStyle(
            fontFamily: 'Avenir',
            fontSize: 35,
            color: Color(0xFF000000),
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
