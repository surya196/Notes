import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  final bool ischecked;
  final String tasktitle;
  final Function checkbox;
  final Function longpres;

  const Tasktile({
    Key? key,
    required this.ischecked,
    required this.tasktitle,
    required this.checkbox,
    required this.longpres,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpres(),
      title: Text(tasktitle),
      trailing: Checkbox(
        activeColor: Colors.blueGrey,
        onChanged: (newval) {
          checkbox(newval);
        },
        value: ischecked,
      ),
    );
  }
}
