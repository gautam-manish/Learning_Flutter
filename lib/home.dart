import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
          border: Border.all(
            color: const Color.fromARGB(255, 65, 49, 68),
            width: 5.0,
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.yellow,
                offset: Offset(5.0, 5.0),
                blurRadius: 5.0),
            BoxShadow(
                color: Colors.blue,
                offset: Offset(-5.0, -5.0),
                blurRadius: 5.0),
          ],
        ),
        height: 200,
        width: 200,
        child: Center(
          child: Text(
            "Home Page",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              shadows: [
                BoxShadow(
                    color: Colors.yellow,
                    offset: Offset(5.0, 5.0),
                    blurRadius: 5.0),
                BoxShadow(
                    color: Colors.blue,
                    offset: Offset(-5.0, -5.0),
                    blurRadius: 5.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
