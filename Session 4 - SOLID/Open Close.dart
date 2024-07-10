//? Open Close Principle
//? A class should be open for extension but closed for modification.

//! BAD

class Human {
  void eat() {
    print('Human is eating');
  }

  bool isSuperHuman = true;
  void toggleHuman() {
    isSuperHuman = !isSuperHuman;
  }

  void fly() {
    if (!isSuperHuman) {
      print('Human is not flying');
      return;
    }
    print('Human is flying');
  }
}

void main() {
  Human human = Human();
  human.eat();
  human.toggleHuman();
  print(human.isSuperHuman);
}

//* GOOD

class Human2 {
  void eat() {
    print('Human is eating');
  }
}

class SuperHuman2 extends Human {
  void fly() {
    print('SuperHuman is flying');
  }
}
