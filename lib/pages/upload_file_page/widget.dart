import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:task_management_app/models/document.dart';
import 'package:task_management_app/models/member_info.dart';
import 'package:intl/intl.dart';

List<int> _listSelected = [];
DateTime selectedDay = DateTime.now();
DateTime focusedDay = DateTime.now();

documentTitle({context}) {
  return Container(
    margin: EdgeInsets.only(left: 19, top: 15, right: 29),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Document",
          style: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor),
        ),
        Text(
          "August 24, 2020",
          style: TextStyle(fontSize: 8),
        )
      ],
    ),
  );
}

divider({top}) {
  return Container(
    margin: EdgeInsets.only(top: 15.5),
    child: Divider(
      height: 0,
      thickness: 1,
    ),
  );
}

documentGridViewAndUploadTile({context}) {
  return Container(
    margin: EdgeInsets.only(top: 19.5, left: 22, right: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Them vo day
        GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1,
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 16),
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: documentList.length,
            itemBuilder: (context, index) {
              if (index == 0)
                return InkWell(
                  onTap: () {},
                  child: DottedBorder(
                    color: Color(0xFF253F50),
                    radius: Radius.circular(7),
                    strokeWidth: 1,
                    borderType: BorderType.RRect,
                    dashPattern: [3, 3],
                    child: Container(
                      width: 500,
                      height: 500,
                      child: Center(
                        child: ElevatedButton(
                          child: Icon(Icons.add),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(5),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            minimumSize: Size(2, 2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(90),
                            ),
                            primary: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              return Container(
                width: 139,
                height: 124,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    image: DecorationImage(
                        image: AssetImage(documentList[index].ava),
                        fit: BoxFit.cover)),
              );
            }),
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

uploadFileAndUploadButton({context}) {
  return Container(
    margin: EdgeInsets.only(top: 16.5, left: 20, right: 20, bottom: 29),
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
        button(context: context)
      ],
    ),
  );
}

Future<void> _showMyDialog({context}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
          titlePadding: EdgeInsets.only(top: 14),
          insetPadding: EdgeInsets.symmetric(horizontal: 12),
          contentPadding:
              EdgeInsets.only(top: 16.5, bottom: 20, left: 20, right: 20),
          title: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 27),
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
                      style: TextStyle(fontSize: 10, color: Color(0xFFB8BFCE)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.5),
                child: Divider(
                  height: 0,
                  thickness: 1,
                  color: Color(0xFFEDEEF2),
                ),
              )
            ],
          ),
          content: DottedBorder(
            color: Color(0xFF253F50),
            radius: Radius.circular(7),
            strokeWidth: 1,
            borderType: BorderType.RRect,
            dashPattern: [3, 3],
            child: Container(
              margin:
                  EdgeInsets.only(top: 32.4, left: 17, right: 17, bottom: 13),
              child: CircularPercentIndicator(
                radius: 124.1,
                lineWidth: 13.0,
                animation: true,
                percent: 0.78,
                backgroundColor: Colors.white,
                center: new Text(
                  "78%",
                  style: new TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 21.0,
                      color: Theme.of(context).primaryColor),
                ),
                footer: Container(
                  margin: EdgeInsets.only(top: 20.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style:
                              TextStyle(fontSize: 12, color: Color(0xFF606C83)),
                          children: <TextSpan>[
                            TextSpan(text: "Upload 15 Files\n"),
                            TextSpan(text: '1 Gb from '),
                            TextSpan(
                                text: '4 Gb Uploaded',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Theme.of(context).primaryColor)),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 21),
                        child: OutlinedButton(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            padding: EdgeInsets.symmetric(vertical: 15),
                            minimumSize:
                                Size(MediaQuery.of(context).size.width, 0),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            primary: Theme.of(context).primaryColor,
                            side: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 2),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ],
                  ),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: Theme.of(context).primaryColor,
              ),
            ),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)));
    },
  );
}

_addMemberBottomSheet({context}) {
  showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return Container(
            height: MediaQuery.of(context).size.height / 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  visualDensity: VisualDensity(vertical: -4),
                  contentPadding:
                      EdgeInsets.only(top: 17, left: 33, right: 31.5),
                  horizontalTitleGap: 0,
                  title: Text("Team Members",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor)),
                  subtitle: Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        "12 Active Member",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF72809E)),
                      )),
                  trailing: ElevatedButton(
                    child: Icon(Icons.add),
                    style: ElevatedButton.styleFrom(
                      visualDensity:
                          VisualDensity(horizontal: -4, vertical: -4),
                      primary: Theme.of(context).primaryColor,
                      padding: EdgeInsets.all(17),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size(30.07, 30.07),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90)),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      _selectedCalendar(context: context);
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 16.5),
                  child: Divider(
                    height: 0,
                    thickness: 1,
                    color: Color(0xFFEDEEF2),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  child: Container(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          suffixIcon: Icon(
                            Icons.search_outlined,
                            size: 30,
                          ),
                          hintStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: memberInfoList.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 33, vertical: 0),
                          dense: true,
                          onTap: () {
                            setState(() {
                              if (_listSelected.contains(index))
                                _listSelected.remove(index);
                              else
                                _listSelected.add(index);
                            });
                          },
                          leading: Image.asset(memberInfoList[index].ava),
                          minLeadingWidth: 0,
                          horizontalTitleGap: 15,
                          title: Text(memberInfoList[index].name,
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xFF35425B))),
                          subtitle: Text(
                            memberInfoList[index].position,
                            style: TextStyle(
                                fontSize: 10, color: Color(0xFF35425B)),
                          ),
                          trailing: Checkbox(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            visualDensity:
                                VisualDensity(horizontal: -4, vertical: -4),
                            value: _listSelected.contains(index),
                            activeColor: Theme.of(context).primaryColor,
                            onChanged: (newValue) {
                              setState(() {
                                if (_listSelected.contains(index))
                                  _listSelected.remove(index);
                                else
                                  _listSelected.add(index);
                              });
                            },
                          ),
                        );
                      }),
                )
              ],
            ),
          );
        });
      });
}

_selectedCalendar({context}) {
  showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return SingleChildScrollView(
            child: TableCalendar(
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                    color: Color(0xFF253F50),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
                weekendStyle: TextStyle(
                    color: Color(0xFF253F50),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
                dowTextFormatter: (date, locale) =>
                    DateFormat.E(locale).format(date).toUpperCase(),
              ),
              startingDayOfWeek: StartingDayOfWeek.monday,
              calendarStyle: CalendarStyle(
                defaultTextStyle:
                    TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                outsideTextStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color(4289638062)),
                cellMargin: EdgeInsets.zero,
                selectedDecoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle,
                ),
                todayDecoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: BoxShape.circle,
                ),
                defaultDecoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
              ),
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleTextFormatter: (date, locale) =>
                    DateFormat.MMM().format(date),
                titleCentered: true,
                titleTextStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).primaryColor),
                headerPadding: EdgeInsets.zero,
                headerMargin: EdgeInsets.only(top: 23, bottom: 26),
                leftChevronPadding: EdgeInsets.zero,
                rightChevronPadding: EdgeInsets.zero,
                leftChevronMargin: EdgeInsets.only(left: 32),
                rightChevronMargin: EdgeInsets.only(right: 32),
                leftChevronIcon: Icon(
                  Icons.chevron_left,
                  size: 25,
                  color: Color(0xFF71809C),
                ),
                rightChevronIcon: Icon(
                  Icons.chevron_right,
                  size: 25,
                  color: Color(0xFF71809C),
                ),
              ),
              onDaySelected: (DateTime selectDay, DateTime focusDay) {
                setState(() {
                  selectedDay = selectDay;
                  focusedDay = focusDay;
                });
                print(focusedDay);
              },
              selectedDayPredicate: (DateTime date) {
                return isSameDay(selectedDay, date);
              },
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: selectedDay,
            ),
          );
        });
      });
}

button({context}) {
  return Container(
    margin: EdgeInsets.only(top: 16),
    width: MediaQuery.of(context).size.width,
    child: ElevatedButton(
      onPressed: () async {
        _showMyDialog(context: context);
        await Future.delayed(Duration(seconds: 2));
        Navigator.pop(context);
        _addMemberBottomSheet(context: context);
      },
      child: Text(
        "Upload",
      ),
    ),
  );
}
