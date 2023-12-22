import 'package:flutter/material.dart';
import 'package:mini_blog/models/blog.dart';

class BlogItem extends StatelessWidget {
  const BlogItem({Key? key, required this.blog}) : super(key: key);
  final Blog blog;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 175, 239, 177),
      elevation: 20,
      shadowColor: Colors.grey,
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 4 / 2,
              child: Container(
                color: Colors.grey[300],
                width: double.infinity,
                child: Image.network(blog.thumbnail!),
              ),
            ),
            ListTile(
              title: Text(blog.title!),
              subtitle: Text(blog.author!),
            )
          ],
        ),
      ),
    );
  }
}
