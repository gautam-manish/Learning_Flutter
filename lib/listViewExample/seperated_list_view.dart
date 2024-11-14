import 'package:flutter/material.dart';

class SeperatedListView extends StatelessWidget {
  const SeperatedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 98, 150, 144),
        title: Text("Seperated List View"),
      ),
      body: SizedBox(
        height: 200,
        child: ListView.separated(
          itemCount: 24,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10,
          ),
          itemBuilder: (ctx, index){
            return Container(
              height: 200,
              width: 200,
              color: Colors.pink,
              // margin: const EdgeInsets.all(10.0),
              child: Image.network("https://www.tessllc.us/wp-content/uploads/2020/07/yacht-post-825x510.jpg")
            );
          },
          separatorBuilder: (ctx, index){
            // return Container(
            //   color: Colors.black,
            //   height: 10,
            //   width: 100,
            // );
            return VerticalDivider(
              color: Colors.purple,
              thickness: 4,
              endIndent: 20,
              indent: 20,
            );
          }
        ),
      ),
    );
  }
}