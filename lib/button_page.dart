import 'package:flutter/material.dart';

import 'data.dart';
import 'home_page.dart';

class ButtonPage extends StatelessWidget {

  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF252422),
      body:SafeArea(
        left:true,
        right: true,
        bottom: false,
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Selecciona un idioma para continuar:',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 30,
                  color: Colors.white,
                  ),
                textAlign: TextAlign.center,
                ),
              RaisedButton(
                padding: const EdgeInsets.all(15.0),
                textColor: Color(colorPagina[0].colorTextoPrincipal),
                color: Color(colorPagina[0].colorPrincipal),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
                elevation: 10,
                child: Text("INGLÉS",
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 30,
                  ),
                ),
                onPressed: (){
                  Navigator.push(context,
                  
                  MaterialPageRoute(
                    builder: (
                      context) => HomePage(colorPagina: colorPagina,i: 0,),
                      )
                  );
                },
              ),
              RaisedButton(
                padding: const EdgeInsets.all(15.0),
                textColor: Color(colorPagina[1].colorTextoPrincipal),
                color: Color(colorPagina[1].colorPrincipal),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(
                    builder: (
                      context) => HomePage(colorPagina: colorPagina,i: 1,),
                      )
                  );
                },
                elevation: 10,
                child: Text("ALEMÁN",
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}