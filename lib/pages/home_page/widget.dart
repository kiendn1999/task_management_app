import 'package:flutter/material.dart';

title({context}) {
  return Text("No tasks found?",
      style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 20));
}

logoHomeScreen() {
  return Container(
    margin: EdgeInsets.only(top: 44.9),
    child: Image.asset("assets/images/logo_home_screen.png"),
  );
}

description() {
  return Container(
      width: 211,
      margin: EdgeInsets.only(top: 45.2),
      child: Text(
        "Try to assign more tasks to your employees or create a new project from scratch",
        style: TextStyle(fontSize: 12, color: Color(0xFF606C83)),
        textAlign: TextAlign.center,
      ));
}
