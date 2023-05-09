import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    title: "Contador de Pessoas", //parametro opcional
    home: Home()
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _people = 0;
  String mensagem;

  void _changePeolpe(int count){
    setState(() {
      if(_people >=0 &&_people<=10) {
        _people += count;
      }
      if(_people>0 && _people<10){
        mensagem = "Vamo ganhar porco!!";
      }
      else{
        mensagem = "Lotação máxima :(";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset("images/allianz.jpeg", fit: BoxFit.fill, height: 1000,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Pessoas: $_people', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                    child: Text("+1", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 30)),
                    onPressed: (){
                      _changePeolpe(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                    child: Text("-1", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 30)),
                    onPressed: (){
                      _changePeolpe(-1);
                    },
                  ),
                )
              ],
            ),
            Text("$mensagem", style: TextStyle(color: Colors.green, fontStyle: FontStyle.italic, fontSize: 30))
          ],
        )
      ],
    );
  }
}
