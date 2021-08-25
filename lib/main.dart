import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/taskdata.dart';
import 'screen/TaskScrenn.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) { 
        Taskdata();
       },
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
