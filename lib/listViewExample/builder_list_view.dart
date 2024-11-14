import 'package:flutter/material.dart';

class BuilderListView extends StatelessWidget {
  const BuilderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 98, 150, 144),
        title: Text("Builder List View"),
      ),
      body: ListView.builder(
        itemCount: 24,
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        itemBuilder: (ctx, index){
          return Container(
            height: 400,
            width: 400,
            color: Colors.pink,
            margin: const EdgeInsets.all(10.0),
            child: Text("$index"),
          );
        }
      ),
    );
  }
}