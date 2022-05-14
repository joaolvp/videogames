import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'mock/videogame_data.dart';

final Uri _url = Uri.parse('https://flutter.dev');

class Xboxs extends StatefulWidget {
  const Xboxs({Key? key}) : super(key: key);

  @override
  State<Xboxs> createState() => _XboxsState();
}

class _XboxsState extends State<Xboxs> {
  var game = CarregarVideoGames();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${game[1].nome}'),
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
                    Image.network('${game[1].url}'),])),

          Text('${game[1].nome}'),
          Text('${game[1].preco} Reais'),
          Text('${game[1].descricao}'),

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