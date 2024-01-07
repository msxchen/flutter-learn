import 'package:flutter/material.dart';

import '02_StatelessWidget相关的基础组件.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(fontSize: 20);
    return MaterialApp(
      title: 'Flutter Demo1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: <String, WidgetBuilder>{
        'less': (BuildContext context) => LessGroup(),
      },
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Test'),

          /// ----------------- 添加返回按钮 -----------------
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back),
          ),
        ),
        // body: const ColorPluginTest(),
        body: _currentIndex == 0
            ? Container(
                decoration: const BoxDecoration(color: Colors.white),
                alignment: Alignment.center,
                child: const LessGroup())
            : const Text('list'),

        /// ----------------- 添加底部导航栏 -----------------
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: '列表')
          ],
        ),
      ),
    );
  }
}
