import 'package:flutter/material.dart';
 

class homePage extends StatelessWidget{

    final estiloTexto = new TextStyle( fontSize: 30);
    final conteo = 10;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
           title: Text('APP Conteo'),
           backgroundColor: Colors.yellow,
           elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de Clicks', style: estiloTexto),
              Text(conteo.toString(), style: estiloTexto),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          child: Icon(Icons.add),
          onPressed: (){
            print('Hello World');

          },
        ), floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
    }

}