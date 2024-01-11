import 'package:flutter/material.dart';
import 'package:my_flappy_game/assets.dart';
import 'package:my_flappy_game/game/flappy_bird_game.dart';
class MainMenuScreen extends StatelessWidget {
  static const String id="mainMenu";
  final FlappyBirdGame game;
  const MainMenuScreen({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    game.pauseEngine();

    return Scaffold(
      body: GestureDetector(
        onTap: (){
          game.overlays.remove("mainMenu");
          game.resumeEngine();
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.menu),
              fit: BoxFit.cover
            )
          ),
          child: Image.asset(Assets.message),
        ),
      ),
    );
  }
}
