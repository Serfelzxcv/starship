import 'dart:async';
import 'dart:ui';

import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:starship/componentes/player.dart';

class MyGame extends FlameGame{
  late Player player;
  
  @override
    Future<void> onLoad() async {
    await Flame.device.fullScreen();
    await Flame.device.setPortrait();
      return super.onLoad();
}

  @override
    Color backgroundColor(){
      return const Color.fromARGB(255, 0, 0, 1);
    }

  void startGame(){
    _createPlayer();
  }
  void _createPlayer(){
    player = Player();
    add(player);
  }
//TODO ----- 11:32 --- https://www.youtube.com/watch?v=aNWDGLgB6PQ
}