import 'package:flutter/material.dart';
import 'package:maneker/models/task_data.dart';
import 'package:provider/provider.dart';
class AddTaskScreen extends StatelessWidget {

  late String newTaskTitle;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),topLeft: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',style: TextStyle(fontSize: 30.0,color: Colors.deepPurple),textAlign: TextAlign.center,),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            TextButton(onPressed: (){
              Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
              Navigator.pop(context);
            },
              child: Text('Add',style: TextStyle(color: Colors.white)),
              style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),
            ),
          ],
        ),
      ),
    );
  }
}