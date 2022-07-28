import 'dart:math';

import 'package:spaceship/spaceship.dart';

class ArmoredSpaceShip extends SpaceShip {
  double Armorpower;

  ArmoredSpaceShip(int health, int firePower, this.Armorpower) {
    this.health = health;
    this.firePower = firePower;
  }

  @override
  double determineDamage(double baseDamage) {
    Random random = Random();
    double percentage = Armorpower * random.nextDouble();
    return (1 - percentage) * baseDamage;
  }
}
