import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management_app/pages/task_page/task_screen.dart';
import 'package:task_management_app/utils/widget.dart';

import 'widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: "Projects", context: context),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 112.5, left: 32, right: 32),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            title(context: context),
            logoHomeScreen(),
            description(),
            button(
                context: context,
                top: 16.0,
                content: "Create New Task",
                toScreen: TaskScreen()),
          ]),
        ),
      ),
    );
  }
}
