import 'package:flutter/material.dart';

void main() {
  // parametre - widget
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              print("2B2");
            },
          ),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              icon: Icon(Icons.add_alert),
              onPressed: () {
                print("Tobeto");
              },
            ),
          ],
          title: const Text(
            "Tobeto",
          ),
        ),

        backgroundColor: Colors.green, // Configuration Widget
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage("assets/images/profile.jpg"),
                width: 400,
                height: 400,
              ),
              Text(
                "Emirhan Balcı",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                "Tobeto - Mobil Geliştirici - 1B",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                "31.10.2023",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Image(
                image: AssetImage("assets/images/play.png"),
                width: 70,
                height: 70,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
// Stateless => UI
// Stateful => Dynamic UI
