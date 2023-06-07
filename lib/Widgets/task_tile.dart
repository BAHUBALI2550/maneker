import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {


  late final bool isChecked;
  late final String taskTitle;
  final Function checkboxCallback;
  final void Function() longPressCallback;

  TaskTile({required this.isChecked,required this.taskTitle,required this.checkboxCallback,required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
      style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
      activeColor: Colors.deepPurple,
    value: isChecked,
    onChanged: (bool? value) => checkboxCallback(value!),
    ),
    );
  }
}

