import 'package:flutter/material.dart';
import 'package:maneker/models/task_data.dart';
import 'package:maneker/screens/add_task_screen.dart';

import '../Widgets/tasks_list.dart';
import 'package:provider/provider.dart';


class TaskScreen extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) => AddTaskScreen());
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0,left: 30.0,right: 30.0,bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: Icon(Icons.list,size: 30.0,color: Colors.deepPurple,)),
                SizedBox(
                  height: 10.0,
                ),
                Text('Maneker',style: TextStyle(color: Colors.white,fontSize: 50.0,fontWeight: FontWeight.w700),),
                Text('${Provider.of<TaskData>(context).taskCount} TASKS',style: TextStyle(color: Colors.white,fontSize: 18),),
              ],
            ),
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}




