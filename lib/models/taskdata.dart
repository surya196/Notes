import 'dart:collection';

import 'package:flutter/cupertino.dart';

import 'task.dart';




class Taskdata extends ChangeNotifier{


 List<Task> _task = [
    Task(
      name: 'bread',
    ),
    Task(name: 'milk')
  ];

  UnmodifiableListView<Task>  get puplictask {
    return UnmodifiableListView(_task);
  }

int get taskcount {
  return _task.length;
}

void add(String title){
final tak=Task(name: title);
  _task.add(tak);
  notifyListeners();
}
void updateTask(Task task){
  task.toggleDone();
  notifyListeners();

}
void del(Task task){
  _task.remove(task);
  notifyListeners();

}

}