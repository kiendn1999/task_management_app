import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management_app/pages/create_task_page/create_task_screen.dart';
import 'package:task_management_app/utils/widget.dart';

import 'widget.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: "Task", context: context),
      body: Card(
        elevation: 10,
        margin: EdgeInsets.only(top: 14.5, bottom: 22, left: 14, right: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title(context: context),
            divider(),
            taskList(setState: setState)
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(),
      floatingActionButton: AnimatedContainer(
        duration: Duration(seconds: 1),
        alignment: listSelectedTask.length >= 1
            ? AlignmentDirectional(1, 0.6)
            : AlignmentDirectional(1, 1.5),
        child: FloatingActionButton(
          child: Icon(Icons.keyboard_arrow_right),
          onPressed: () {
            var route =
                MaterialPageRoute(builder: (context) => CreateTaskScreen());
            Navigator.push(context, route);
          },
        ),
      ),
    );
  }
}
