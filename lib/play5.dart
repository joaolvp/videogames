import 'package:atividade/mock/videogame_data.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://flutter.dev');

class Playstation extends StatefulWidget {
  const Playstation({Key? key}) : super(key: key);

  @override
  State<Playstation> createState() => _PlaystationState();
}

class _PlaystationState extends State<Playstation> {
  var game = CarregarVideoGames();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${game[0].nome}'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              height:300,
              child:
              Stack(
                  fit: StackFit.expand,
                  children:[
                    Image.network('${game[0].url}'),])),

          Text('${game[0].nome}'),
          Text('${game[0].preco} Reais'),
          Text('${game[0].descricao}'),

          RaisedButton(
            onPressed: _launchUrl,
            child: Text('Ta na Hora de Aprender Flutter'),
          ),

        ],

      ),
    );
  }
}

void _launchUrl() async {
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}

