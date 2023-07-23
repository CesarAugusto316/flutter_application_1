// ignore_for_file: avoid_print

abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Fish extends Animal {}

abstract class Bird extends Animal {}

abstract mixin class Flyable {
  void fly() => print('I am flying');
}

abstract mixin class Walkable {
  void walk() => print('I am walking');
}

abstract mixin class Swimmable {
  void swim() => print('I am swimming');
}

class Dophin extends Mammal with Swimmable, Walkable {
  @override
  void swim() {
    // super.swim();
  }

  @override
  void walk() {
    // super.walk();
  }
}
