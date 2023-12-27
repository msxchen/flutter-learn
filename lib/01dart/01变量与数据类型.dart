main(List<String> args) {
  dataType();
}

/// 变量的声明与使用
void variable() {
  // 用数据类型声明变量
  String name = 'coderwhy';
  int age = 18;
  double height = 1.88;
  print('${name}, ${age}, ${height}');

  // 用类型推导声明变量
  // var推导变量类型,并且变量类型不可被改变
  var name1 = 'coderwhy';
  name1 = 'kobe';
  print('name1 type: ${name1.runtimeType}'); // String
  var age1 = 18;
  // age1 = 'why'; // 不可以将String赋值给一个int类型

  // dynamic可以修改变量类型但是极不建议使用!!!
  dynamic name2 = 'coderwhy';
  print(name2.runtimeType); // String
  name2 = 18;
  print(name2.runtimeType); // int

  // final和const都用来定义常量,赋值后不可被修改
  // const在赋值时, 赋值的内容必须是在编译期间就确定下来的
  // final在赋值时, 可以动态获取, 比如赋值一个函数
  final name3 = 'coderwhy'; // final编译期间赋值
  // name3 = 'kobe'; // Can't assign to the final variable 'name3'.
  final t1 = DateTime.now(); // final运行期间赋值
  const age3 = 18; // const编译期间必须赋值
  // const time = DateTime.now();  // Error: Cannot invoke a non-'const' constructor where a const expression is expected.
  // age3 = 20; // Can't assign to the const variable 'age3'.
  // const放在赋值语句后面,提高性能
  final p1 = const Person();

  int a;
}

/// 数据类型
/// 数据类型包含: int/double boolean string list/set/map
void dataType() {
  // 字符串和数字转化
  // 1.字符串转数字
  var one = int.parse('111');
  var two = double.parse('12.22');
  print('${one} ${one.runtimeType}'); // 111 int
  print('${two} ${two.runtimeType}'); // 12.22 double
  print('=================分割线=================');

  // 2.数字转字符串
  var num1 = 123;
  var num2 = 123.456;
  var num1Str = num1.toString();
  var num2Str = num2.toString();
  var num2StrD = num2.toStringAsFixed(2); // 保留两位小数
  print('${num1Str} ${num1Str.runtimeType}'); // 123 String
  print('${num2Str} ${num2Str.runtimeType}'); // 123.456 String
  print('${num2StrD} ${num2StrD.runtimeType}'); // 123.46 String
  print('=================分割线=================');

  // 1.定义字符串的方式
  var s1 = 'Hello World';
  var s2 = "Hello Dart";
  var s3 = 'Hello\'Fullter';
  var s4 = "Hello'Fullter";
  // 2.表示多行字符串的方式
  var message1 = '''
  哈哈哈
  呵呵呵
  嘿嘿嘿''';
  // 3.拼接其他变量
  var name = 'coderwhy';
  var age = 18;
  var height = 1.88;
  print('my name is ${name}, age is $age, height is $height');
  print('=================分割线=================');

  // 集合类型 List Set Map
  // List定义
  // 1.使用类型推导定义
  var letters = ['a', 'b', 'c', 'd'];
  print('$letters ${letters.runtimeType}');
  // 2.明确指定类型
  List<int> numbers = [1, 2, 3, 4];
  print('$numbers ${numbers.runtimeType}');

  // Set的定义
  // 1.使用类型推导定义
  var lettersSet = {'a', 'b', 'c', 'd'};
  print('$lettersSet ${lettersSet.runtimeType}');
  // 2.明确指定类型
  Set<int> numbersSet = {1, 2, 3, 4};
  print('$numbersSet ${numbersSet.runtimeType}');

  // Map的定义
  // 1.使用类型推导定义
  var infoMap1 = {'name': 'why', 'age': 18};
  print('$infoMap1 ${infoMap1.runtimeType}');
  // 2.明确指定类型
  Map<String, Object> infoMap2 = {'height': 1.88, 'address': '北京市'};
  print('$infoMap2 ${infoMap2.runtimeType}');

  // 获取集合的长度
  print(letters.length);
  print(lettersSet.length);
  print(infoMap1.length);

  // List/Set操作
  // 添加/删除/包含元素
  numbers.add(5);
  numbersSet.add(5);
  print('$numbers $numbersSet');
  numbers.remove(1);
  numbersSet.remove(1);
  print('$numbers $numbersSet');
  print(numbers.contains(2));
  print(numbersSet.contains(2));
  // List根据index删除元素
  numbers.removeAt(3);
  print('$numbers');

  // Map的操作
  // 1.根据key获取value
  print(infoMap1['name']); // why
  // 2.获取所有的entries
  print('${infoMap1.entries} ${infoMap1.entries.runtimeType}'); // (MapEntry(name: why), MapEntry(age: 18)) MappedIterable<String, MapEntry<String, Object>>
  // 3.获取所有的keys
  print('${infoMap1.keys} ${infoMap1.keys.runtimeType}'); // (name, age) _CompactIterable<String>
  // 4.获取所有的values
  print('${infoMap1.values} ${infoMap1.values.runtimeType}'); // (why, 18) _CompactIterable<Object>
  // 5.判断是否包含某个key或者value
  print('${infoMap1.containsKey('age')} ${infoMap1.containsValue(18)}'); // true true
  // 6.根据key删除元素
  infoMap1.remove('age');
  print('${infoMap1}'); // {name: why}
  print('=================分割线=================');


}

class Person {
  const Person();
}
