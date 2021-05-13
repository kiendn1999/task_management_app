import 'package:flutter/material.dart';
import 'package:task_management_app/models/brading.dart';

List<int> listSelectedTask = [];

title({context}) {
  return Container(
    margin: EdgeInsets.only(left: 19, right: 28, top: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Task Checklist",
          style: Theme.of(context).textTheme.headline5,
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90),
              color: Color(0xFF05C3EB)),
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Center(
                  child: Text(
                "+2",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              )),
              Positioned(
                  right: 26, child: Image.asset("assets/images/avatar3.png")),
              Positioned(
                  right: 40, child: Image.asset("assets/images/avatar2.png")),
              Positioned(
                  right: 58, child: Image.asset("assets/images/avatar1.png")),
            ],
          ),
        )
      ],
    ),
  );
}

divider() {
  return Container(
    margin: EdgeInsets.only(top: 27.5),
    child: Divider(
      height: 0,
      thickness: 1,
    ),
  );
}

taskList({setState}) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.only(top: 17.1, left: 19, right: 21, bottom: 32),
      child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 10.4,
            );
          },
          itemCount: brandingList.length,
          itemBuilder: (context, index) {
            return itemChoice(
                index: index, context: context, setState: setState);
          }),
    ),
  );
}

itemChoice({index, context, setState}) {
  return TextButton(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
          activeColor: Theme.of(context).primaryColor,
          visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          value: listSelectedTask.contains(index),
          onChanged: (newValue) {},
        ),
        Container(
          margin: EdgeInsets.only(left: 12),
          child: Text(
            brandingList[index].branding,
            style: listSelectedTask.contains(index)
                ? Theme.of(context).textTheme.headline3
                : Theme.of(context).textTheme.headline4,
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 11),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: brandingList[index].brandingBackColor()),
              child: Text(
                brandingList[index].category,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: brandingList[index].brandingPrimaryColor()),
              ),
            ),
          ),
        )
      ],
    ),
    style: TextButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: Size(0, 0),
        padding: EdgeInsets.only(top: 10, bottom: 13, left: 16, right: 9),
        side: listSelectedTask.contains(index)
            ? BorderSide(color: Theme.of(context).primaryColor)
            : BorderSide(style: BorderStyle.none),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
    onPressed: () {
      setState(() {
        if (listSelectedTask.contains(index))
          listSelectedTask.remove(index);
        else
          listSelectedTask.add(index);
      });
    },
  );
}
