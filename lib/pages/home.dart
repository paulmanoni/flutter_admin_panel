import 'package:flutter/material.dart';
import 'package:flutteradminpanel/common/base.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Dashboard",
      content: Center(
        child: Text("Home"),
      ),
    );
  }
}
