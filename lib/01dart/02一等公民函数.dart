main(List<String> args) {
  dataType();
}

/// dart完全面向对象,函数也是一种数据类型,可以作为变量/入参/返回值等
///
void dataType () {
  // 定义函数
  num sum(num a, num b) {
    return a + b;
  }
  // 所有函数都返回一个值。如果没有指定返回值，则语句返回null;隐式附加到函数体。
  foo() {
    print('没有返回值, 默认null');
  }
  // 函数体只是一个表达式或语句可用箭头函数替换
  sum1(a, b) => a + b;
  sum2(a, b) => print('$a, $b');
  print('==============================分割线==============================');


  // 函数的参数
  // 命名可选参数: {param1, param2, ...}
  // 参数可以有默认值
  printInfo1(String name, {int age = 18, required double height}) {
    print('name=$name age=$age height=$height');
  }
  printInfo1('why', age: 18, height: 1.88); // name=why age=18 height=1.88
  // 位置可选参数: [param1, param2, ...]
  printInfo2(String name, [int? age, double? height]) {
    print('name=$name age=$age height=$height');
  }
  printInfo2('why', 18); // name=why age=18 height=null
  print('==============================分割线==============================');

  // 匿名函数
  // 1.定义数组
  var movies = ['盗梦空间', '星际穿越', '少年派', '大话西游'];
  // 2.使用forEach遍历: 有名字的函数
  printElement(item) {
    print(item);
  }
  movies.forEach(printElement);
  // 3.使用forEach遍历: 匿名函数
  movies.forEach((item) {
    print(item);
  });
  movies.forEach((item) => print(item));
  print('==============================分割线==============================');

  // 闭包
  makeAdder(num addBy) {
    return (num i) {
      return i + addBy;
    };
  }
  var adder2 = makeAdder(2);
  print(adder2(10)); // 12
  print(adder2(6)); // 8
  var adder5 = makeAdder(5);
  print(adder5(10)); // 15
  print(adder5(6)); // 11
  print('==============================分割线==============================');













  int a;
}

class Person{
  const Person();
}