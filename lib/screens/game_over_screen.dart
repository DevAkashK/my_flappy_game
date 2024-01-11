import 'package:flutter/material.dart';
import 'package:my_flappy_game/assets.dart';
import 'package:my_flappy_game/game/flappy_bird_game.dart';

class GameOverScreen extends StatelessWidget {
  static const String id = "gameOver";
  final FlappyBirdGame game;

  const GameOverScreen({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black38,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(Assets.gameOver),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: onRestart,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                child: const Text(
                  "Restart",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }

  onRestart() {
    game.bird.reset();
    game.overlays.remove("gameOver");
    game.resumeEngine();
  }
}
