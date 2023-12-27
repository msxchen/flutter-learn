main(List<String> args) {
  classTest();
}

void classTest() {
  // 1.创建类的对象  new可以省略
  var p = new Person("zs", 18);  // 使用默认构造方法或自定义的构造方法初始化对象
  var p1 = Person.withArgments('ls', 18);  // 使用命名构造方法初始化对象
  var p2 = Person.fromMap({'name': 'why', 'age': 18});  // map=>obj 初始化对象
  var p3 = Person.withInitializer2('z', 's');  // 用初始化列表初始化对象

  // 2.给对象的属性赋值
  p.name = 'why';
  // 3.调用对象的方法
  p3.eat();
  print('==============================分割线==============================');
  // 4.const创建同一个对象
  var p4 = Person1.constPerson('zs', 18);
  p4.test();





  int a;
}


// 定义类
class Person {
  late String firstName;
  late String lastName;
  late String name;
  late int age;

  // ==============================分割线==============================
  // 构造方法
  // 当类中没有明确指定构造方法时，将默认拥有一个无参的构造方法。当有了自己的构造方法时，默认的构造方法将会失效，不能使用
  // 下面的写法等价于 初始化对象时给name/age赋值(语法糖形式)
  Person(this.name, this.age);
  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  // -------------------------------1-------------------------------
  // 命名构造方法
  // dart不支持函数重载,所以引入命名构造方法
  Person.withArgments(this.name, this.age);

  // -------------------------------2-------------------------------
  // map=>obj 的构造方法
  Person.fromMap(Map<String, Object> map) {
    name = map['name'] as String;
    age = map['age'] as int;
  }

  // -------------------------------3-------------------------------
  // 初始化列表
  Person.withInitializer(String firstName, String lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.name = firstName + lastName;
  }
  Person.withInitializer2(this.firstName, this.lastName) : name = firstName + lastName;
  // 使用初始化列表 调用别的构造器初始化对象
  Person.withInitializer3(String name, int age) : this.withArgments(name, age);

  // ==============================分割线==============================
  // 在方法中通常使用属性时，会省略this，但是有命名冲突时，this不能省略；
  eat() {
    print('$name在吃东西');
  }

  @override
  String toString() {
    return 'name=$name age=$age';
  }
}

class Person1{
  final String name;
  final int age;
  // -------------------------------4-------------------------------
  // 常量构造器
  // const进行修饰的构造器 使用const创建的对象堆中是同一个对象
  const Person1.constPerson(this.name, this.age);
  void test() {
    Person1 p1 = const Person1.constPerson('zs', 18);
    Person1 p2 = const Person1.constPerson('zs', 18);
    print('p1和p2是否是同一个对象: ${identical(p1, p2)}');
  }


}