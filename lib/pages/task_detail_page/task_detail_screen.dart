import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management_app/models/brading.dart';
import 'package:task_management_app/pages/task_detail_page/widget.dart';
import 'package:task_management_app/utils/widget.dart';

class TaskDetailScreen extends StatefulWidget {
  @override
  _TaskDetailScreenState createState() => _TaskDetailScreenState();
}

class _TaskDetailScreenState extends State<TaskDetailScreen> {
  List<Branding> _categoryList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    brandingList.forEach((element) {
      if (_contains(element.category) == false) _categoryList.add(element);
    });
  }

  bool _contains(String category) {
    for (Branding e in this._categoryList) {
      if (e.category == category) return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: "Task Detail", context: context),
      body: Card(
        elevation: 10,
        margin: EdgeInsets.only(top: 14.5, bottom: 22, left: 14, right: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title(context: context),
              divider(top: 15.5),
              descriptionAndUploadTitle(
                  categoryList: _categoryList,
                  setState: setState,
                  context: context),
              divider(top: 15.5),
              uploadFileAndAssignedTitle(context: context),
              divider(top: 15.5),
              assignedAndAddTaskButton(context: context)
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}
