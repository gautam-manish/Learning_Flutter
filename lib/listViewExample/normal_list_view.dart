import 'package:flutter/material.dart';

class NormalListView extends StatelessWidget {
  NormalListView({super.key});
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:
    AppBar(
      backgroundColor: Colors.teal,
      title: Text("Normal List View"),
      ),
      body: RawScrollbar(
        controller: scrollController,
        thumbColor: Colors.yellow,
        thickness: 20,
        radius: Radius.circular(8),
        thumbVisibility: true,
        trackVisibility: true,
        trackColor: Colors.purple,
        child: ListView(
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          children: List.generate(
            34, 
            (index){
              return Container(
              height: 400,
              width: 400,
              color: Colors.red,
              margin: const EdgeInsets.all(10.0),
            );
            }
          )
        ),
      ),
    );
  }
}