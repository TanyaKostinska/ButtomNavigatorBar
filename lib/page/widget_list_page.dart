import 'package:flutter/material.dart';

class WidgetListPage extends StatelessWidget {
  const WidgetListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.lightBlueAccent),
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Text('Rocky'),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.lightBlueAccent),
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Text('Spot'),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.lightBlueAccent),
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Text('Fido'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
