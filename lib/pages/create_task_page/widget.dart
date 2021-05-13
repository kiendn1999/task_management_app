import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task_management_app/utils/widget.dart';

DateTime selectedStartDate = DateTime.now();
DateTime selectedDueDate = DateTime.now();

selectStartDate(BuildContext context, setState) async {
  final DateTime picked = await showDatePicker(
    context: context,
    initialDate: selectedStartDate,
    firstDate: DateTime(2000),
    lastDate: DateTime(2025),
    helpText: 'Select start date',
  );
  if (picked != null && picked != selectedStartDate)
    setState(() {
      selectedStartDate = picked;
    });
}

selectDueDate(BuildContext context, setState) async {
  final DateTime picked = await showDatePicker(
    context: context,
    initialDate: selectedDueDate,
    firstDate: DateTime(2000),
    lastDate: DateTime(2025),
    helpText: 'Select due date',
  );
  if (picked != null && picked != selectedDueDate)
    setState(() {
      selectedDueDate = picked;
    });
}

title({context}) {
  return Container(
    margin: EdgeInsets.only(left: 20, top: 17),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Create New Task",
          style: Theme.of(context).textTheme.headline5,
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child: Text(
            "Are you ready?",
            style: TextStyle(fontSize: 12, color: Color(0xFF606C83)),
          ),
        )
      ],
    ),
  );
}

divider() {
  return Container(
    margin: EdgeInsets.only(top: 16.5),
    child: Divider(
      height: 0,
      thickness: 1,
    ),
  );
}

textForm({context}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text(content: "Task Name", top: 0.0),
      textFiled(content: "UI/UX Design", context: context),
      text(content: "Division", top: 15.0),
      textFiled(content: "Brand Management", context: context),
    ],
  );
}

pickCalendar({context, setState}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text(content: "Start / Due Date", top: 15.0),
      Container(
        margin: EdgeInsets.only(top: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            pickDateButton(typeButton: 1, context: context, setState: setState),
            pickDateButton(typeButton: 2, context: context, setState: setState),
          ],
        ),
      ),
    ],
  );
}

listTickBranding({setState, context}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(top: 20),
        child: Text(
          "Branding",
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      Container(
        height: 145.2,
        margin: EdgeInsets.only(top: 14),
        child: listViewTickBranding(setState: setState),
      ),
    ],
  );
}

text({content, top}) {
  return Container(
    margin: EdgeInsets.only(top: top),
    child: Text(
      content,
      style: TextStyle(fontSize: 12, color: Color(0xFF606C83)),
    ),
  );
}

textFiled({content, context}) {
  return Container(
    height: 40,
    margin: EdgeInsets.only(top: 6),
    child: TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 10, bottom: 11, left: 12),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
          hintText: content,
          hintStyle: Theme.of(context).textTheme.headline2),
    ),
  );
}

pickDateButton({typeButton, context, setState}) {
  return OutlinedButton(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image.asset("assets/images/ic_set_calender.png"),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Text(
            "${DateFormat.yMd().format(typeButton == 1 ? selectedStartDate : selectedDueDate)}",
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
      ],
    ),
    style: OutlinedButton.styleFrom(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: EdgeInsets.only(top: 10, bottom: 11, left: 13, right: 33),
      backgroundColor: Colors.white,
      side: BorderSide(color: Color(0xFFD7E1EA)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
      ),
    ),
    onPressed: () => typeButton == 1
        ? selectStartDate(context, setState)
        : selectDueDate(context, setState),
  );
}

addButton({context}) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: OutlinedButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(90)),
            child: Icon(
              Icons.add,
              size: 15,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              "Moodboard Research for Color",
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
        ],
      ),
      style: OutlinedButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: Size(0, 0),
        padding: EdgeInsets.only(top: 11, bottom: 12, left: 10.9, right: 67),
        backgroundColor: Colors.white,
        side: BorderSide(color: Theme.of(context).primaryColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6.0)),
        ),
      ),
      onPressed: () {},
    ),
  );
}

descriptions() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      text(content: "Descriptions", top: 21.0),
      Container(
        margin: EdgeInsets.only(top: 14),
        child: TextField(
          maxLines: 3,
          textAlign: TextAlign.justify,
          decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFFF7F9FB),
              contentPadding: EdgeInsets.all(18),
              isDense: true,
              hintMaxLines: 3,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(6)),
              hintText:
                  "Please, the logo must represent the brand character, positioning, and the client USP and ESP.",
              hintStyle: TextStyle(fontSize: 14)),
        ),
      ),
    ],
  );
}
