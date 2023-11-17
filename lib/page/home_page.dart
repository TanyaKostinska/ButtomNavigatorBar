import 'package:book/page/post_list_page.dart';
import 'package:book/page/widget_list_page.dart';
import 'package:flutter/material.dart';

import 'image_list_page.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  int selectIndex = 0;

  Widget getPage(int index) {
    switch (index) {
      case 0:
        return PostListPage();
      case 1:
        return ImageListPage();
      case 2:
        return const WidgetListPage();
      default:
        return PostListPage();
    }
  }

  void onPushed(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
        backgroundColor: Colors.limeAccent,
      ),
      body: Center(
        child: getPage(selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectIndex,
        onTap: onPushed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.tag_faces), label: 'Faces'),
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: 'Photo'),
        ],
      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}
