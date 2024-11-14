import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First"),
      ),
      body: Center(
        child: Text("First Program"),
      ),
      floatingActionButton: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FloatingActionButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(ctx){
                  //   return Second();
                  // }));
                  Navigator.pushNamed(context, "/second");
                },
                child: Icon(Icons.reddit_rounded),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FloatingActionButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(ctx){
                  //   return Second();
                  // }));
                  Navigator.pushNamed(context, "/dashboard");
                },
                child: Icon(Icons.dashboard_customize_outlined),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FloatingActionButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder:(ctx){
                  //   return Second();
                  // }));
                  Navigator.pushNamed(context, "/normal");
                },
                child: Icon(Icons.qr_code_2_rounded),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
