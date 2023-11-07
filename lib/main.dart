import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenBox(),
    );
  }
}

class ScreenBox extends StatefulWidget {
  const ScreenBox({super.key});

  @override
  State<ScreenBox> createState() => _ScreenBoxState();
}

class _ScreenBoxState extends State<ScreenBox> {
  Color color = Colors.limeAccent;

  void chengeColor(String newColor) {
    setState(() {
      if (newColor == 'red') {
        color = Colors.red;
      } else if (newColor == 'blue') {
        color = Colors.blue;
      } else if (newColor == 'green') {
        color = Colors.green;
      } else {
        color = Colors.limeAccent;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Box'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              //chengeColor();
            },
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: color,
              ),
            ),
          ),
          const SizedBox(height: 50),
          TextButton(
            onPressed: () {
              chengeColor('red');
            },
            child: const Text('red'),
          ),
          TextButton(
            onPressed: () {
              chengeColor('blue');
            },
            child: const Text('blue'),
          ),
          TextButton(
            onPressed: () {
              chengeColor('green');
            },
            child: const Text('green'),
          ),
          TextButton(
            onPressed: () {
              chengeColor('reset');
            },
            child: const Text('reset'),
          ),
        ],
      ),
    );
  }
}
