import 'package:atividade/play5.dart';
import 'package:atividade/xboxs.dart';
import 'package:flutter/material.dart';

import 'homescreen.dart';

void main(){
  runApp(MaterialApp(
    routes:{
      '/': (_) => HomePage(),
      '/play5': (_) => Playstation(),
      '/xboxs': (_) => Xboxs(),
    },
  ));
}