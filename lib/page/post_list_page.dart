import 'package:flutter/material.dart';

class PostListPage extends StatelessWidget {
  PostListPage({super.key});

 final List<PostModel> postList = [
    PostModel(
        imageUrl:
            'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg',
        text: 'gkghdfkghkf'),
    PostModel(
        imageUrl:
            'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg',
        text: 'gkghdfkghkf'),
    PostModel(
        imageUrl:
            'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg',
        text: 'gkghdfkghkf'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: postList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.network(
                postList[index].imageUrl,
                height: 300,
              ),
              Text(postList[index].text),
            ],
          );
        });
  }
}

class PostModel {
  String imageUrl;
  String text;
  PostModel({required this.imageUrl, required this.text});
}
