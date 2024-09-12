import 'package:first_flutter_app/dashboard.dart';
import 'package:first_flutter_app/first.dart';
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
        }
      },
      initialRoute: "/",
    );
  }
}
