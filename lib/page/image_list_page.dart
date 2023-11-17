import 'package:flutter/material.dart';

class ImageListPage extends StatelessWidget {
  ImageListPage({super.key});

  final List<ImageModel> postPhoto = [
    ImageModel(
      imageUrl:
          'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg',
    ),
    ImageModel(
      imageUrl:
          'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg',
    ),
    ImageModel(
      imageUrl:
          'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Text(
            'GridView.builder',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w700,
              color: Colors.limeAccent,
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
              itemCount: postPhoto.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [Image.network(postPhoto[index].imageUrl)],
                );
              }),
        ),
      ],
    );
  }
}

class ImageModel {
  String imageUrl;
  ImageModel({required this.imageUrl});
}
