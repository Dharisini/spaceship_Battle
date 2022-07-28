import 'dart:math';

import 'package:spaceship/ArmoredSpaceship.dart';
import 'package:spaceship/HighspeedSpaceShip.dart';
import 'package:spaceship/spaceship.dart';

class BattleField {
  List<SpaceShip> ships = [
    ArmoredSpaceShip(1000, 100, 0.3),
    HighSpeedSpaceShip(1000, 100)
  ];

  void showShip(SpaceShip s, int id) {
    print("#${id + 1} ${s.health}");
  }

  void startbattle() {
    Random random = Random();
    int index = random.nextInt(2);
    for (int i = 0; i < 2; i++) {
      showShip(ships[i], i);
    }
    while (true) {
      SpaceShip attacker = ships[index];
      SpaceShip attacked = ships[(index + 1) % 2];
      attacked.hit((attacker));
      for (int i = 0; i < 2; i++) {
        showShip(ships[i], i);
      }
      if (ships.any((element) => element.is_destroyed())) {
        break;
      }
    }
    print("done");
  }
}
