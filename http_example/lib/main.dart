import 'package:flutter/material.dart';
import 'package:http_example/screens/products_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(useMaterial3: true, scaffoldBackgroundColor: Colors.black),
      home: const Scaffold(
        body: ProductsScreen(),
      ),
    );
  }
}
