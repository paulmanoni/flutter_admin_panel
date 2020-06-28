import 'package:flutter/material.dart';
import 'package:flutteradminpanel/common/base.dart';

class TableScreen extends StatefulWidget {
  @override
  _TableScreenState createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      title: "Table",
      content: Center(
        child: Text("Table"),
      ),
    );
  }
}
