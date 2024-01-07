import 'package:flutter/material.dart';

class LessGroup extends StatelessWidget {
  const LessGroup({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(fontSize: 20);
    return Column(
      children: [
        Text(
          "data",
          style: textStyle,
        ),
        const Icon(
          Icons.android,
          size: 50,
          color: Colors.red,
        ),
        const CloseButton(),
        const BackButton(),
        Card(
            color: Colors.blue,
            // 阴影
            elevation: 5,
            margin: const EdgeInsets.all(20),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: const Text("hello card"),
            )),
        const AlertDialog(
          title: Text('data'),
          content: Text('hello data'),
        )
      ],
    );
  }
}
