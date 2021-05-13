import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management_app/pages/create_task_page/widget.dart';
import 'package:task_management_app/pages/task_detail_page/task_detail_screen.dart';
import 'package:task_management_app/utils/widget.dart';

class CreateTaskScreen extends StatefulWidget {
  @override
  _CreateTaskScreenState createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: "Create Task", context: context),
      body: Card(
        elevation: 10,
        margin: EdgeInsets.only(top: 14.5, bottom: 22, left: 14, right: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title(context: context),
              divider(),
              Container(
                margin:
                    EdgeInsets.only(top: 15.5, left: 20, right: 20, bottom: 34),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textForm(context: context),
                    pickCalendar(context: context, setState: setState),
                    listTickBranding(setState: setState, context: context),
                    addButton(context: context),
                    descriptions(),
                    button(
                        top: 17.0,
                        context: context,
                        content: "Create New Task",
                        toScreen: TaskDetailScreen())
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}
