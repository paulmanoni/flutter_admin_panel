import 'package:flutter/material.dart';
import 'package:flutteradminpanel/pages/home.dart';
import 'package:flutteradminpanel/pages/table.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Admin Panel',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/home": (context) => HomeScreen(),
        "/table": (context) => TableScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
