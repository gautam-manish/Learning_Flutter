import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 200,
            width: 300,
            color: Colors.blue,
          ),
          Container(
            height: 200,
            width: 300,
            color: Colors.pink,
          ),
          Container(
            height: 200,
            width: 250,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}