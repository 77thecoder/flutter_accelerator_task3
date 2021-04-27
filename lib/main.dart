import 'package:flutter/material.dart';
import 'package:task3/screens/profile_page.dart';
import 'package:task3/themes/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task3',
      theme: ThemeData(
        primaryColor: AppColors.white,
        textTheme: buildAppTextTheme(),
      ),
      home: ProfilePage(title: 'Profile'),
    );
  }
}
