import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mini_blog/models/blog.dart';
import 'package:http/http.dart' as http;

class BlogDetails extends StatefulWidget {
  const BlogDetails({Key? key, required this.blogId}) : super(key: key);
  final String blogId;
  @override
  _BlogDetailsState createState() => _BlogDetailsState();
}

class _BlogDetailsState extends State<BlogDetails> {
  Blog blog = Blog();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchBlogs();
  }

  Future fetchBlogs() async {
    Uri url = Uri.parse(
        "https://tobetoapi.halitkalayci.com/api/Articles/${widget.blogId}");
    final response = await http.get(url);
    final jsonData = jsonDecode(response.body);

    setState(() {
      blog = Blog.fromJson(jsonData);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text(blog.title == null ? "Yükleniyor" : blog.title!)),
        body: blog.id == null
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      // border: Border.all(color: Colors.green),
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(40),
                      ),
                      border: Border.all(
                          color: const Color.fromARGB(255, 175, 239, 177),
                          width: 3,
                          style: BorderStyle.solid),
                    ),
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 4 / 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(blog.thumbnail!),
                          ),
                        ),
                        Text(blog.content!),
                        Text("- ${blog.author!} -"),
                      ],
                    ),
                  ),
                ),
              ));
  }
}
