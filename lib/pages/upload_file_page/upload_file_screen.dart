import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management_app/pages/upload_file_page/widget.dart';
import 'package:task_management_app/utils/widget.dart';

class UploadFileScreen extends StatefulWidget {
  @override
  _UploadFileScreenState createState() => _UploadFileScreenState();
}

class _UploadFileScreenState extends State<UploadFileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: "Upload File", context: context),
      body: Card(
        elevation: 10,
        margin: EdgeInsets.only(top: 14.5, bottom: 22, left: 14, right: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //TITLE
              documentTitle(context: context),
              //DIVIDER
              divider(top: 15.5),
              //FORM
              documentGridViewAndUploadTile(context: context),
              //DIVIDER
              divider(top: 15.5),
              uploadFileAndUploadButton(context: context)
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
}
