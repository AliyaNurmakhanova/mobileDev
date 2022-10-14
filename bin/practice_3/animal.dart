// 3.	 Создайте абстрактный класс Animal. Ещё классы: Dog, Cat, Parrot, Fish,
// которые наследуются от класса Animal. Создайте интерфейсы: CanRun(), CanFly(), CunSwim().
// Создайте по 3-5 объектов классов Dog, Cat, Parrot, Fish и сгруппируйте их по интерфейсам(Полиморфизм).
abstract class Animal {
  Actions? actionValue;
  String? name;
  Animal(Actions action, String? name) {
    this.actionValue = action;
    this.name = name;
  }

  void childPrint();
}

class Dog extends Animal {
  Dog(super.name, super.action);

  @override
  void childPrint() {
    this.actionValue?.makeAction();
  }
}

class Cat extends Animal {
  Cat(super.name, super.action);

  @override
  void childPrint() {
    this.actionValue?.makeAction();
  }
}

class Parrot extends Animal {
  Parrot(super.name, super.action);

  @override
  void childPrint() {
    this.actionValue?.makeAction();
  }
}

class Fish extends Animal {
  Fish(super.name, super.action);

  @override
  void childPrint() {
    this.actionValue?.makeAction();
  }
}

abstract class Actions {
  void makeAction();
}

class ICanRun extends Actions {
  @override
  void makeAction() {
    print('Action: run');
  }
}

class ICanFly extends Actions {
  @override
  void makeAction() {
    print('Action: fly');
  }
}

class ICanSwim extends Actions {
  @override
  void makeAction() {
    print('Action: swim');
  }
}

void main(List<String> args) {
  Actions actions = ICanFly();
  Animal obj = Dog(actions, "Alex");
  print(obj.name);
  obj.childPrint();
}
