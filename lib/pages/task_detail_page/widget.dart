import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:task_management_app/pages/upload_file_page/upload_file_screen.dart';
import 'package:task_management_app/utils/widget.dart';

List<int> listSelected = [];

title({context}) {
  return Container(
    margin: EdgeInsets.only(left: 20, top: 17, right: 37),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Interface Design",
          style: Theme.of(context).textTheme.headline5,
        ),
        Container(
          margin: EdgeInsets.only(top: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset("assets/images/ic_oclock.png"),
                  Container(
                      margin: EdgeInsets.only(left: 11),
                      child:
                          Text("09 : 00  AM", style: TextStyle(fontSize: 12)))
                ],
              ),
              Row(
                children: [
                  Image.asset("assets/images/ic_calender2.png"),
                  Container(
                    margin: EdgeInsets.only(left: 11),
                    child: Text(
                      "August 24, 2020",
                      style: TextStyle(fontSize: 12),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}

divider({top}) {
  return Container(
    margin: EdgeInsets.only(top: top),
    child: Divider(
      height: 0,
      thickness: 1,
    ),
  );
}

descriptionAndUploadTitle({categoryList, setState, context}) {
  return Container(
    margin: EdgeInsets.only(top: 23.5, left: 20, right: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Task Name
        Text(
          "Description",
          style: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, right: 64),
          child: Text(
            "Communicate clear deadlines and expectations, and keep everyone on your team aligned and motivated.",
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 16),
          child: Wrap(
            spacing: 7,
            runSpacing: 8,
            children: categoryList
                .map((item) => Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 11),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: item.brandingBackColor()),
                      child: Text(
                        item.category,
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: item.brandingPrimaryColor()),
                      ),
                    ))
                .toList()
                .cast<Widget>(),
          ),
        ),
        Container(
          height: 160.8,
          margin: EdgeInsets.only(top: 22.6),
          child: listViewTickBranding(setState: setState),
        ),
        Container(
          margin: EdgeInsets.only(top: 33),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Upload File",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).primaryColor),
              ),
              Text(
                "August 24, 2020",
                style: TextStyle(fontSize: 8),
              )
            ],
          ),
        ),
        //Branding
      ],
    ),
  );
}

uploadFileAndAssignedTitle({context}) {
  return Container(
    margin: EdgeInsets.only(top: 16.5, left: 20, right: 20),
    child: Column(
      children: [
        InkWell(
          onTap: () {},
          child: DottedBorder(
            color: Color(0xFF253F50),
            radius: Radius.circular(7),
            strokeWidth: 1,
            borderType: BorderType.RRect,
            dashPattern: [3, 3],
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 70, bottom: 55),
              child: Column(
                children: [
                  Image.asset("assets/images/ic_upload_folder.png"),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: RichText(
                      text: TextSpan(
                        style:
                            TextStyle(fontSize: 10, color: Color(0xFFB4C3D1)),
                        children: <TextSpan>[
                          TextSpan(text: 'Drop your Image or '),
                          TextSpan(
                              text: 'Browse Here',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Assigned To: ",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).primaryColor),
              ),
              Text(
                "August 24, 2020",
                style: TextStyle(
                  fontSize: 8,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

assignedAndAddTaskButton({context}) {
  return Container(
    margin: EdgeInsets.only(
        /*top: 14.5,*/
        bottom: 28,
        left: 20,
        right: 20),
    child: Column(
      children: [
        ListTile(
          dense: true,
          contentPadding: EdgeInsets.zero,
          leading: Image.asset("assets/images/ava_tony.png"),
          title: Text(
            "Tonny Stark",
            style: TextStyle(fontSize: 14, color: Color(0xFF35425B)),
          ),
          subtitle: Text(
            "Project Manager",
            style: TextStyle(
              fontSize: 10,
            ),
          ),
          trailing: IconButton(
            padding: EdgeInsets.zero,
            visualDensity: VisualDensity(horizontal: -4, vertical: -4),
            icon: Image.asset("assets/images/ic_plus.png"),
            onPressed: () {},
          ),
        ),
        button(
            top: 15.0,
            context: context,
            content: "Add New Task",
            toScreen: UploadFileScreen())
      ],
    ),
  );
}
