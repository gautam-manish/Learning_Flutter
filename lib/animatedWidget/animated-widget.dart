import 'package:flutter/material.dart';

class AnimatedWidgetExample extends StatefulWidget {
  const AnimatedWidgetExample({super.key});

  @override
  State<AnimatedWidgetExample> createState() => _AnimatedWidgetExampleState();
}

class _AnimatedWidgetExampleState extends State<AnimatedWidgetExample> {
  bool shouldChange = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Widget"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              width: shouldChange ? 600 : 200,
              height: shouldChange ? 800 : 300,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(10)),
            ),
            Container(
              height: 400,
              width: 400,
              color: Colors.red,
              child: AnimatedPadding(duration: const Duration(seconds: 3),
              curve: Curves.bounceInOut,
              padding: EdgeInsets.all(shouldChange ? 40 : 10),
              child: AnimatedOpacity(
                duration: const Duration(seconds: 1),
                opacity: shouldChange ? 0.3 : 1,
                child: Container(
                  color: Colors.black,
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          shouldChange = !shouldChange;
          setState(() {});
        },
        child: Icon(Icons.arrow_right),
      ),
    );
  }
}
