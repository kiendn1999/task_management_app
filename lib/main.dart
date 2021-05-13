import 'package:flutter/material.dart';
import 'package:task_management_app/pages/home_page/home_screen.dart';
import 'package:task_management_app/utils/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
      home: HomeScreen(),
    );
  }
}
