import 'dart:math';

import 'package:spaceship/ArmoredSpaceship.dart';
import 'package:spaceship/HighspeedSpaceShip.dart';
import 'package:spaceship/spaceship.dart';

class BattleField {
  List<SpaceShip> ships = [
    ArmoredSpaceShip(1000, 100, 0.3),
    HighSpeedSpaceShip(1000, 100)
  ];

  void startbattle() {
    Random random = Random();
    int index = random.nextInt(2);
    while (true) {
      SpaceShip attacker = ships[index];
      SpaceShip attacked = ships[(index + 1) % 2];
      attacked.hit((attacker));
    }
  }
}
