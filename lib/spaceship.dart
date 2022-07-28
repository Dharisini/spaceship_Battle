int calculate() {
  return 6 * 7;
}

abstract class SpaceShip {
  int health = 10000;
  int firePower = 100;

  void hit(SpaceShip another_ship) {
    print("Spaceship is shooting");

    // ignore: unnecessary_this
    if (another_ship.is_destroyed() || this.is_destroyed()) {
      return;
    }
    health = (health - determineDamage(another_ship.firePower * 1.0)).toInt();
  }

  double determineDamage(double baseDamage);

  // bool is_destroyed() {
  //   if (health <= 0) {
  //     return true;
  //   }
  //   return false;
  // }

  // bool is_destroyed() => health <= 0;

  bool is_destroyed() {
    return health <= 0;
  }
}
