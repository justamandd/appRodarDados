import 'package:app_varias_telas/Resultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: GameDados(),
  ));
}

class GameDados extends StatefulWidget {
  @override
  _GameDadosState createState() => _GameDadosState();
}

class _GameDadosState extends State<GameDados> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jogo dos dados'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Rode os dados', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50), textAlign: TextAlign.center,),
            RaisedButton(
              child: Text('RODA MARIA'),
              color: Colors.green,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Resultado(random(1, 6))
                  )
                );
              }
            )
          ],
        )
      )
    );
  }
}

int random(int min, int max){
  Random rnd = new Random();
  int rndN = rnd.nextInt(max) + min;
  return rndN;
}