import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/taskdata.dart';
class AddTask extends StatefulWidget {
  
  
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  String? newtask;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0Xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 30,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (val) {
                newtask = val;
              },
            ),
            ElevatedButton(
              onPressed: () {

                Provider.of<Taskdata>(context).add(newtask!);
                
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
