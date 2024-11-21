import 'package:flutter/material.dart';

class BuilderGridView extends StatelessWidget {
  const BuilderGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
    ), 
    itemBuilder:(ctx, index){
      return Container(
        color: Colors.teal,
        child: Center(
          child: Text(
            "Index = ${index + 1}",
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      );
    },
    );
  }
}