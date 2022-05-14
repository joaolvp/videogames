import 'package:atividade/mock/videogame_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var game = CarregarVideoGames();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height:250,
                child:
                Stack(
                    fit: StackFit.expand,
                    children:[
                      Image.network('${game[0].url}'),])),

            Text('${game[0].nome}'),
            Text('${game[0].preco} Reais'),
            ElevatedButton.icon(
                onPressed: (){Navigator.pushNamed(context, '/play5');},
                icon: Icon(Icons.shopping_cart) ,
                label: Text('Comprar') ),



            SizedBox(
              height: 250 ,
              child:
              Stack(
                fit: StackFit.expand,
                children: [
                  Image.network('${game[1].url}')
                ],
              ),
            ),

            Text('${game[1].nome}'),
            Text('${game[1].preco} Reais'),
            ElevatedButton.icon(
                onPressed: (){Navigator.pushNamed(context, '/xboxs');},
                icon: Icon(Icons.shopping_cart) ,
                label: Text('Comprar') ),




          SizedBox(
            height: 250 ,
            child:
            Stack(
              fit: StackFit.expand,
              children: [
                Image.network('${game[2].url}')
              ],
            ),
          ),

          Text('${game[2].nome}'),
          Text('${game[2].preco} Reais'),
          ElevatedButton.icon(
              onPressed: (){},
              icon: Icon(Icons.shopping_cart) ,
              label: Text('Comprar') ),
          ],

        ),
      )
    );
  }
}
