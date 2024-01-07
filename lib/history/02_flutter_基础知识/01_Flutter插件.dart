import 'package:flutter/material.dart';
// ----------------- 添加插件 -----------------
/*
1. 在网站上搜索插件: https://pub.dev
2. 在pubspec.yaml中添加插件
dependencies:
  flutter_color_plugin: ^1.1.0
3. 下载插件
点击IDE中的 pub get 即可下载
 */
// ----------------- 引入插件 -----------------
import 'package:flutter_color_plugin/flutter_color_plugin.dart';

class ColorPluginTest extends StatelessWidget {
  const ColorPluginTest({super.key});

  @override
  Widget build(BuildContext context) {
    // ----------------- 使用插件 -----------------
    Color color1 = ColorUtil.color('#f2f2f2');
    return Text(
      "hello plugins",
      style: TextStyle(color: color1),
    );
  }
}
