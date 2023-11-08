import 'package:flutter/material.dart';
import 'package:workshop4/views/home_screen.dart';
import 'package:workshop4/views/result_screen.dart';

class ResultScreen extends StatefulWidget {
  final int score;
  const ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(252, 112, 45, 145),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "this is it!",
              style: TextStyle(
                color: Color.fromARGB(255, 244, 215, 4),
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 80.0,
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              "SCORE: ${widget.score}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 70.0,
            ),
            MaterialButton(
              padding: const EdgeInsets.all(12.0),
              shape: const StadiumBorder(),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen(

                        )));
              },
              color: const Color.fromARGB(255, 251, 147, 3),
              child: const Text(
                " Try Again ",
                style: TextStyle(
                  color: Colors.white12,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
