import 'package:book/home_page.dart';
import 'package:flutter/material.dart';

class HomeLibrary extends StatelessWidget {
  const HomeLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Library'),
      ),
    );
  }
}
