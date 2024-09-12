import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  const BoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Text(
              "This is box.",
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 40,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text.rich(
              TextSpan(
                text: "Hello ",
                children: [
                  TextSpan(
                    text: "World",
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                ],
              ),
              style: TextStyle(
                color: Colors.cyanAccent,
                fontSize: 30,
              ),
            )
          ],
        ),
        color: Colors.amber,
      ),
    );
  }
}
