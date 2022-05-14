import '';
import '../models/videogame.dart';

List<VideoGame> CarregarVideoGames(){
  final videogame = [
    VideoGame(
        id: 001,
        nome:'Playstation 5',
        preco: 4499.00,
        descricao: 'Jogar não Tem Limites. Desfrute do carregamento extremamente rápido com o SSD de altíssima velocidade, uma imersão mais profunda com suporte a feedback tátil, gatilhos adaptáveis e áudio 3D, além de uma geração inédita de jogos incríveis para Console Playstation 5 - PS5. Domine o poder de uma CPU e GPU personalizadas e o SSD com E/S integradas que redefinem as regras do que o console PlayStation 5 pode fazer.',
        url: 'https://a-static.mlcdn.com.br/618x463/playstation-5-2020-nova-geracao-825gb-1-controle-branco-sony/magazineluiza/231261100/701f8162ff0251869f7b20f3d7eb8e29.jpg'),
    VideoGame(id: 002,
        nome: 'Xbox Series S',
        preco: 2000,
        descricao: 'Pronto para ação. Com mundos mais dinâmicos e tempos de carregamento mais rápidos, o Xbox Series S totalmente digital oferece desempenho poderoso em um design compacto.',
        url: 'https://d3ddx6b2p2pevg.cloudfront.net/Custom/Content/Products/10/73/1073914_console-xbox-series-s_m1_637369732078617828.jpg'),
    VideoGame(id: 003,
        nome: 'Xbox Series X',
        preco: 5000.00,
        descricao: '',
        url: 'https://compass-ssl.xbox.com/assets/a7/fa/a7facf03-2cb6-4f20-81a1-ac7e7773fab6.jpg?n=Resident-Evil-Village_Feature-0_XSX_767x628.jpg')
  ];
return videogame;
}