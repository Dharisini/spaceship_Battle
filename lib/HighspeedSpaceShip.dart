import 'dart:html';
import 'dart:math';

import 'package:spaceship/spaceship.dart';

class HighSpeedSpaceShip extends SpaceShip {
  @override
  double determineDamage(double baseDamage) {
 

    Random random = Random();
    bool dodge = random.nextBool();
    if (dodge == true) {
      return 0;
    } else {
      return baseDamage;
    }
    
  }
  HighSpeedSpaceShip(int health, int firePower){
    this.health = health;
    this.firePower = firePower;
  }
}
