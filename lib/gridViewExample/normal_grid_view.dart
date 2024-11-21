import 'package:flutter/material.dart';

class NormalGridView extends StatelessWidget {
  const NormalGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      children: List.generate(
        100, 
        (index){
          return Container(
            color: Colors.purple,
            width: 200,
            height: 200,
            child: Text("$index"),
          );
        }),
    );
  }
}