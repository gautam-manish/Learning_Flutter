import 'package:first_flutter_app/animatedWidget/animated-widget.dart';
import 'package:first_flutter_app/dashboard.dart';
import 'package:first_flutter_app/first.dart';
import 'package:first_flutter_app/gridViewExample/builder_grid_view.dart';
import 'package:first_flutter_app/gridViewExample/normal_grid_view.dart';
import 'package:first_flutter_app/listViewExample/builder_list_view.dart';
import 'package:first_flutter_app/listViewExample/normal_list_view.dart';
import 'package:first_flutter_app/listViewExample/seperated_list_view.dart';
import 'package:first_flutter_app/second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (ctx) {
          return First();
        },
        "/second": (ctx) {
          return Second();
        },
        "/dashboard":(ctx) {
          return Dashboard();
        },
        "/normal":(ctx){
          return NormalListView();
        },
        "/builder":(ctx){
          return BuilderListView();
        },
        "/seperated":(ctx){
          return SeperatedListView();
        },
        "/grid":(ctx){
          return NormalGridView();
        },
        "/buildergv":(ctx){
          return BuilderGridView();
        },
        "/animate":(ctx){
          return AnimatedWidgetExample();
        }
      },
      initialRoute: "/animate",
    );
  }
}
