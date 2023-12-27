class Animal {
  int age;
  Animal(this.age);
  run() {
    print('在奔跑ing');
  }
}

class Person extends Animal {
  String name;
  // ==============================分割线==============================
  // 继承中构造方法的调用
  // 子类的构造方法在执行前，将隐含调用父类的无参默认构造方法（没有参数且与类同名的构造方法）。
  // 如果父类没有无参默认构造方法，则子类的构造方法必须在初始化列表中通过super显式调用父类的某个构造方法。
  Person(this.name, int age) : super(age);

  // ==============================分割线==============================
  // 子类可以重写父类方法
  // 子类基础了父类的所有属性(构造方法除外)
  @override
  run() {
    print('$name, $age在奔跑ing');
  }
}

// ==============================分割线==============================
// 抽象类
abstract class Runner {
  run();
}
class Jump {
  jump() {print('jump');}
}
abstract class Flyer {
  fly();
}
// ==============================分割线==============================
// 接口implements
// dart 中声明一个类的同时也声明了这个类的同名接口, 所以 class 可以被 implements
class SuperMan implements Runner, Flyer, Jump {
  @override
  run() {
    print('超人在奔跑');
  }
  @override
  fly() {
    print('超人在飞');
  }
  @override  // 尽管该方法已经在类中实现,一旦使用了implements就必须override. 解决方法Mixin
  jump() {
    print('jump');
  }
}

// ==============================分割线==============================
// Mixin with
// Mixin解决多继承问题/实现接口时必须重写方法的问题
mixin Runner1 {
  run() { print('在奔跑'); }
}
mixin Flyer1 {
  fly() { print('在飞翔'); }
}
class MixinTest with Runner1, Flyer1 {
}



