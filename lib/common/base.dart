import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteradminpanel/common/sidebar.dart';

class BaseScreen extends StatelessWidget {
  final Widget content;
  final String title;
  final bool appBarPinned;
  final bool appBarFloating;

  BaseScreen({
    this.content,
    this.appBarPinned,
    this.appBarFloating,
    this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          drawer: Drawer(
            child: Sidebar(),
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Row(
              children: [
                constraints.maxWidth > 600
                    ? Material(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        elevation: 2,
                        child: Sidebar(),
                      )
                    : SizedBox(),
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        title: Text(
                          "${this.title != null ? this.title : 'Flutter Admin Panel'}",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        pinned: this.appBarPinned != null
                            ? this.appBarPinned
                            : false,
                        floating: this.appBarFloating != null
                            ? this.appBarFloating
                            : false,
                        leading: constraints.maxWidth < 600 ? null : SizedBox(),
                        backgroundColor: Colors.transparent,
                        iconTheme:
                            IconThemeData(color: Theme.of(context).accentColor),
                      ),
                      SliverFillRemaining(
                        child: this.content,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
