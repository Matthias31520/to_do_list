import 'package:flutter/material.dart';
import 'screen/TaskScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: TaskScreen.id,
      routes: {
        TaskScreen.id: (context) => TaskScreen()
      },
    );
  }
}

