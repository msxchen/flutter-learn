// ============================== 定义库名称 ==============================
// 和文件名称保持一致即可
library testLib;

// ============================== 导入库 ==============================
//dart:前缀表示Dart的标准库，如dart:io、dart:html、dart:math
import 'dart:io';
//相对路径或绝对路径导入
import './07枚举.dart';
//Pub包管理系统中有很多功能强大、实用的库，可以使用前缀 package:
import 'package:flutter/material.dart';
// show关键字：可以显示某个成员（屏蔽其他）
// hide关键字：可以隐藏某个成员（显示其他）
import '05类和对象.dart' show Student, Person;
import '05类和对象.dart' hide Person;
// 当各个库有命名冲突的时候，可以使用as关键字来使用命名空间
import '05类和对象.dart' as Stu;

// ============================== 导出库 ==============================
// 其他dart文件通过import引入后即可使用该lib中的export的内容
export '07枚举.dart';
export '06继承抽象类接口.dart';






