import 'package:book/home_page.dart';
import 'package:flutter/material.dart';

class DetailBook extends StatelessWidget {
  final Book book;

  const DetailBook({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(book.title),
            Text(book.author),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(book.discription),
            const Spacer(),
            if (book.photo != null) Image.network(book.photo!),
          ],
        ),
      ),
    );
  }
}
