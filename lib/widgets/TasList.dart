import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:todoapp/models/taskdata.dart';
import 'TaskTile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Taskdata>(builder: (context, taskdata, Widget? child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return Tasktile(
              ischecked: taskdata.puplictask[index].isDone,
              tasktitle: taskdata.puplictask[index].name,
              checkbox: (box) {
                taskdata.updateTask(taskdata.puplictask[index]);
              },
              longpres: () {
                taskdata.del(taskdata.puplictask[index]);
              });
        },
        itemCount: taskdata.taskcount,
      );
    });
  }
}
