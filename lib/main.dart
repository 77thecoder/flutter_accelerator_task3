import 'package:flutter/material.dart';
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
      home: MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => print('pressed Back'),
        ),
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () => print('pressed Menu'),
          ),
        ],
      ),
      body: Center(
        child: Text('demo'),
      ),
    );
  }
}
